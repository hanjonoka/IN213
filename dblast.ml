type expr =
  | EIdent of string                        (* varname *)
  | EFile of string                         (* file *)
  | EOpen of (string * string)         (* OPEN file AS varname *)
  | ECommit of (string * string)       (* COMMIT varnname TO file *)

let rec print oc = function
  | EIdent s -> Printf.fprintf oc "%s" s
  | EFile s -> Printf.fprintf oc "%s" s
  | EOpen (f,i) -> Printf.fprintf oc "OPEN %s AS %s" f i
  | ECommit (i,f) -> Printf.fprintf oc "COMMIT %s TO %s" i f