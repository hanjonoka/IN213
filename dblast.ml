type expr =
  | EIdent of string                        (* varname *)
  | ELet of (string * expr)
  | ESelect of (string list * string)
  | EOpen of (string * string)         (* OPEN file AS varname *)
  | ECommit of (string * string)       (* COMMIT varnname TO file *)

let rec print oc = function
  | EIdent s -> Printf.fprintf oc "%s" s
  | ELet (s, e) -> Printf.fprintf oc "LET %s = %a" s print e
  | ESelect (idents, t) -> Printf.fprintf oc "SELECT %s FROM %s" (String.concat " " idents) t
  | EOpen (f,i) -> Printf.fprintf oc "OPEN %s AS %s" f i
  | ECommit (i,f) -> Printf.fprintf oc "COMMIT %s TO %s" i f