(* Existe dans le module List seulement à partir de Ocaml 4.11 et j'ai Ocaml 4.08 *)
type value =
  | Int of int
  | Str of string

type table = { mutable header: string list; mutable body: value list list }

type mutable_int_list = {mutable l: int list}

let error msg = raise (Failure msg) ;;

let rec list_filteri f l i =
  match l with
  | x::rem -> (
    if (f i x) then x::(list_filteri f rem (i+1))
    else (list_filteri f rem (i+1))
  )
  | [] -> []
;;
let list_filteri f l = list_filteri f l 0;;

let raw_of_val v =
  match v with
  | Str s -> "\"" ^ s ^ "\""
  | Int i -> Printf.sprintf "%d" i

let sprint_val v =
  match v with
  | Str s -> "\"" ^ s ^ "\""
  | Int i -> Printf.sprintf "%d" i

let val_of_raw raw_val =
  if raw_val.[0] == '"' && raw_val.[(String.length raw_val) - 1] == '\"'
    then Str (String.sub raw_val 1 ((String.length raw_val)-1))
  else
    try
      Int (int_of_string raw_val)
    with
    | Failure "int_of_string" -> error "could not parse raw val"

let get_table header body =
  let is_of_wrong_size row = (List.length row != List.length header) in
  if List.exists is_of_wrong_size body then error ("Wrong format");
  {header= header; body= body}
;;

