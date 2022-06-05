open Dblast;;
open Utils;;
open Filter;;

type dblval =
  | Tableval of table
  | Filtreval of filtre
  | Void

and environment = (string * dblval) list

and global_environnement = {mutable env: environment}
;;

let init_env = [];;

let global_env = {env= init_env};;

let extend rho x v = (x, v) :: rho ;;

let extend_global_env x v = global_env.env <- extend global_env.env x v ;;

let lookup var_name rho = 
  try 
    List.assoc var_name rho
  with Not_found ->
    try List.assoc var_name global_env.env
  with Not_found -> error (Printf.sprintf "Undefined ident '%s'" var_name)

let rec printval = function
  | Tableval tb -> Csv.print_table stdout tb
  | Void -> Printf.printf ""
  | Filtreval f -> Printf.printf "FILTRE"
;;



let rec eval e rho =
  match e with
  | EOpen (f, i) -> (
    let (header, types, body) = Csv.load f in
    let table = Tableval (get_table header types body) in
    extend_global_env i table;
    Void
  )
  | ECommit (i, f) -> (
    let table = lookup i rho in
    match table with
    | Tableval tb -> (Csv.write f (get_table tb.header (List.map raw_of_type tb.types) tb.body); Void)
    | _ -> error ("cannot commit non table")
  )
  | EIdent v -> lookup v rho
  | ESelect (cols, table_expr, filtre_expr) -> (
    let table = eval table_expr rho in
    match table with
    | Tableval tb -> (
      let indices = (
        if cols = ["*"] then List.map (list_find_i tb.header) tb.header else List.map (list_find_i tb.header) cols
      ) in
      let header = List.map (List.nth tb.header) indices in
      let find_inds row = List.map (List.nth row) indices in
      let find_inds_type_to_raw ty = (
        let nth_to_raw l i = raw_of_type (List.nth l i) in
        List.map (nth_to_raw ty) indices
      ) in
      let filtre =
        match eval filtre_expr rho with
        | Filtreval f -> f
        | _ -> error "cannot apply not filter"
      in
      Tableval (get_table header (find_inds_type_to_raw tb.types) (List.map (find_inds) (List.filter (apply_filter filtre tb.header) tb.body)))
    )
    | _ -> error ("Can only select from a table")
  )
  | ELet (str, e) -> (
    let value = eval e rho in
    match value with
    | Tableval tb -> (extend_global_env str value ; Void)
    | _ -> error ("error in let")
    )
  | ETable (header, types, body) -> (
    Tableval (get_table header types body)
  )
  | EProd (expr1, s1, expr2, s2) -> (
    match (eval expr1 rho, eval expr2 rho) with 
    | (Tableval tb1, Tableval tb2) -> (
      let header = (List.map (string_cat (Printf.sprintf "%s." s1)) tb1.header) @ (List.map (string_cat (Printf.sprintf "%s." s2)) tb2.header) in
      let types = List.map raw_of_type (tb1.types @ tb2.types) in
      let cat_line_and_list list1 line =
        List.map (List.append line) list1 in
      let body = List.concat( List.map (cat_line_and_list tb2.body) tb1.body ) in
      Tableval (get_table header types body)
    )
    | _ -> error "Can only do products of tables"
  )
  | EInsert (tb1_expr, tb2_i) -> (
    match eval tb1_expr rho with
    | Tableval tb1 -> (
      match lookup tb2_i rho with
      | Tableval tb2 -> (
        if list_are_equals tb1.header tb2.header && list_are_equals tb1.types tb2.types
          then tb2.body <- List.append tb2.body tb1.body
        else error "Tables structure must be identical"
        ; Void
      )
      | _ -> error "Cannot insert into non-table"
    )
    | _ -> error "Cannot insert non-table"
  )
  | EFiltre (ef1,op,ef2) -> (
    match ef1, ef2 with
    | EFiltre _, EFiltre _ | EFiltre _, ECond _ | ECond _, EFiltre _ | ECond _, ECond _ -> (
      match op with
      | "AND" -> (
        match (eval ef1 rho,eval ef2 rho) with
        | Filtreval f1, Filtreval f2 -> Filtreval (Sup_filtre (f1,AND_op,f2))
        | _ -> error "sill not filters ???"
      )
      | "OR" -> (
        match (eval ef1 rho,eval ef2 rho) with
        | Filtreval f1, Filtreval f2 -> Filtreval (Sup_filtre (f1,OR_op,f2))
        | _ -> error "sill not filters ???"
      )
      | s -> error (Printf.sprintf "unknown operator %s" s)
    )
    | _,_ -> error "Where condition must be a filter"
  )
  | ECond (obj1, op, obj2) -> (
    match op with
    | "=" -> (
      match (obj1, obj2) with
      | Filtre_col _, _ -> Filtreval (Condition(obj1, Eq, obj2))
      | Filtre_val (Int _), Filtre_val (Int _) -> Filtreval (Condition(obj1, Eq, obj2))
      | Filtre_val (Str _), Filtre_val (Str _) -> Filtreval (Condition(obj1, Eq, obj2))
      | _,_ -> error (Printf.sprintf "Cannot apply operator %s on these operands" op)
    )
    | "!=" -> (
      match (obj1, obj2) with
      | Filtre_col _, _ -> Filtreval (Condition(obj1, Neq, obj2))
      | Filtre_val (Int _), Filtre_val (Int _) -> Filtreval (Condition(obj1, Neq, obj2))
      | Filtre_val (Str _), Filtre_val (Str _) -> Filtreval (Condition(obj1, Neq, obj2))
      | _,_ -> error (Printf.sprintf "Cannot apply operator %s on these operands" op)
    )
    | "<" -> (
      match (obj1, obj2) with
      | Filtre_col _, _ -> Filtreval (Condition(obj1, Lt, obj2))
      | Filtre_val (Int _), Filtre_val (Int _) -> Filtreval (Condition(obj1, Lt, obj2))
      | _,_ -> error (Printf.sprintf "Cannot apply operator %s on these operands" op)
    )
    | "<=" -> (
      match (obj1, obj2) with
      | Filtre_col _, _ -> Filtreval (Condition(obj1, Leq, obj2))
      | Filtre_val (Int _), Filtre_val (Int _) -> Filtreval (Condition(obj1, Leq, obj2))
      | _,_ -> error (Printf.sprintf "Cannot apply operator %s on these operands" op)
    )
    | ">=" -> (
      match (obj1, obj2) with
      | Filtre_col _, _ -> Filtreval (Condition(obj1, Geq, obj2))
      | Filtre_val (Int _), Filtre_val (Int _) -> Filtreval (Condition(obj1, Geq, obj2))
      | _,_ -> error (Printf.sprintf "Cannot apply operator %s on these operands" op)
    )
    | ">" -> (
      match (obj1, obj2) with
      | Filtre_col _, _ -> Filtreval (Condition(obj1, Gt, obj2))
      | Filtre_val (Int _), Filtre_val (Int _) -> Filtreval (Condition(obj1, Gt, obj2))
      | _,_ -> error (Printf.sprintf "Cannot apply operator %s on these operands" op)
    )
    | s -> error (Printf.sprintf "unknown op %s" s)
  )
;;

let eval e = eval e init_env ;;