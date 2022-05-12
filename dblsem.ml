open Dblast;;

type dblval =
  | Fval of string
  | Tableval of { mutable header: string list; mutable body: string list list }
  | Void

and environment = (string * dblval) list

and global_environnement = {mutable env: environment}
;;

let init_env = [];;

let error msg = raise (Failure msg) ;;

let global_env = {env= init_env};;

let extend rho x v = (x, v) :: rho ;;

let lookup var_name rho =
  try 
    List.assoc var_name rho
  with Not_found ->
    try List.assoc var_name global_env.env
  with Not_found -> error (Printf.sprintf "Undefined ident '%s'" var_name)

let rec fprint_list oc liste =
  match liste with
  | x::[] -> Printf.fprintf oc "\"%s\"" x
  | x::rem -> Printf.fprintf oc "\"%s\";" x; fprint_list oc rem
  | [] -> ()

let rec printval = function
  | Fval s -> Printf.printf "File : %s" s
  | Tableval tb -> 
    (* let print_table oc hdr =
      List.iter (fprint_list oc "%s;") hdr in  *)
    Printf.fprintf stdout "Table : [%a]" fprint_list tb.header
  | Void -> Printf.printf ""
;;

let rec eval e rho =
  match e with
  | EOpen (f, i) -> (
    let record_table = Csv.load f in
    let table = Tableval {header= record_table.header;body= record_table.body} in
    global_env.env <- extend global_env.env i table;
    Void
  )
  | ECommit (i, f) -> (
    let table = lookup i rho in
    match table with
    | Tableval tb -> (Csv.write f {header=tb.header; body=tb.body}; Void)
    | _ -> error ("cannot commit non table")
  )
  | EIdent v -> lookup v rho
  | _ -> raise (Failure "à finir")
;;

let eval e = eval e init_env ;;