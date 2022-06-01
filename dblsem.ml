open Dblast;;
open Utils;;

type dblval =
  | Tableval of table
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
  | ESelect (cols, table_name, where) -> (
    let table = lookup table_name rho in
    match table with
    | Tableval tb -> (
      let indices = List.map (list_find_i tb.header) cols in
      let header = List.map (List.nth tb.header) indices in
      let find_inds row = List.map (List.nth row) indices in
      let find_inds_type_to_raw ty = (
        let nth_to_raw l i = raw_of_type (List.nth l i) in
        List.map (nth_to_raw ty) indices
      ) in
      let rec compute_filter where head =
        match where with
        | (s,v)::rem -> (
          ((list_find_i head s),v) :: (compute_filter rem head)
        )
        | _ -> []
      in
      let filter = compute_filter where tb.header in
      let rec apply_where filter row = (
        match filter with
        | (i, v) :: rem -> (
          if (List.nth row i)=v then (true && (apply_where rem row)) else false
        )
        | _ -> true
      )
      in
      Tableval (get_table header (find_inds_type_to_raw tb.types) (List.map (find_inds) (List.filter (apply_where filter) tb.body)))
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
  | _ -> raise (Failure "à finir")
;;

let eval e = eval e init_env ;;