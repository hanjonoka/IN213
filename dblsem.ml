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
  | Tableval tb -> 
    let print_row row =
      Printf.sprintf "[%s]" (String.concat ";" (List.map raw_of_val row)) in
    Printf.fprintf stdout "Table : \n[%s]\n%s" (String.concat ";" tb.header) (String.concat "\n" (List.map print_row tb.body))
  | Void -> Printf.printf ""
;;



let rec eval e rho =
  match e with
  | EOpen (f, i) -> (
    let (header, body) = Csv.load f in
    let table = Tableval (get_table header body) in
    extend_global_env i table;
    Void
  )
  | ECommit (i, f) -> (
    let table = lookup i rho in
    match table with
    | Tableval tb -> (Csv.write f {header=tb.header; body=tb.body}; Void)
    | _ -> error ("cannot commit non table")
  )
  | EIdent v -> lookup v rho
  | ESelect (cols, table_name) -> (
    let l_ind = {l=[]} in
    let table = lookup table_name rho in
    match table with
    | Tableval tb -> (
      let eq a b = (a=b) in
      let find_ind ind col =
        if (List.exists (eq col) tb.header) 
        then (
          l_ind.l <- ind :: l_ind.l;
          true
        )
        else false
      in
      let header = (list_filteri find_ind cols) in
      let find_inds row = List.map (List.nth row) l_ind.l in
      Tableval (get_table header (List.map (find_inds) tb.body))
    )
    | _ -> error ("Can only select from a table")
  )
  | ELet (str, e) -> (
    let value = eval e rho in
    match value with
    | Tableval tb -> (extend_global_env str value ; Void)
    | _ -> error ("error in let")
    )
  | ETable (header, body) -> (
    Tableval (get_table header body)
  )
  | EInsert (tb1_expr, tb2_i) -> (
    match eval tb1_expr rho with
    | Tableval tb1 -> (
      match lookup tb2_i rho with
      | Tableval tb2 -> tb2.body <- List.append tb2.body tb1.body; Void
      | _ -> error "Cannot insert into non-table"
    )
    | _ -> error "Cannot insert non-table"
  )
  | _ -> raise (Failure "à finir")
;;

let eval e = eval e init_env ;;