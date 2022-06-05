open Utils;;
open Filter;;

type expr =
  | EIdent of string                        (* varname *)
  | ETable of (string list * string list * value list list)
  | ELet of (string * expr)
  | ESelect of (string list * expr * expr)
  | EOpen of (string * string)         (* OPEN file AS varname *)
  | ECommit of (string * string)       (* COMMIT varnname TO file *)
  | EInsert of (expr * string)
  | EProd of (expr * string * expr * string)
  | EFiltre of (expr * string * expr)
  | ECond of (filtre_obj * string * filtre_obj)

let rec print oc = function
  | EIdent s -> Printf.fprintf oc "%s" s
  | ELet (s, e) -> Printf.fprintf oc "LET %s = %a" s print e
  | ESelect (idents, t, where) -> Printf.fprintf oc "SELECT %s FROM %a WHERE %a" (String.concat " " idents) print t print where
  | EOpen (f,i) -> Printf.fprintf oc "OPEN %s AS %s" f i
  | ECommit (i,f) -> Printf.fprintf oc "COMMIT %s TO %s" i f
  | ETable (hd, ty, bd) -> Printf.fprintf oc "TABLE"
  | EInsert (tb1, tb2) -> Printf.fprintf oc "INSERT %a INTO %s" print tb1 tb2
  | EProd (expr1, s1, expr2, s2) -> Printf.fprintf oc "%a AS %s PROD %a AS %s" print expr1 s1 print expr2 s2 
  | ECond (obj1,op,obj2) -> Printf.fprintf oc "(%s %s %s)" (sprint_obj obj1) op (sprint_obj obj2)
  | EFiltre (e1,op,e2) -> Printf.fprintf oc "(%a %s %a)" print e1 op print e2