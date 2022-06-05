type value =
  | Int of int
  | Str of string
  | Null

type table = { mutable header: string list; mutable types: value list; mutable body: value list list }

type mutable_int_list = {mutable l: int list}

let error msg = raise (Failure msg) ;;

(* Existe dans le module String à partir de Ocaml 4.13*)
let string_cat s1 s2 = s1 ^ s2;;

(* Existe dans le module List seulement à partir de Ocaml 4.11 et j'ai Ocaml 4.08 *)
let rec list_filteri f l i =
  match l with
  | x::rem -> (
    if (f i x) then x::(list_filteri f rem (i+1))
    else (list_filteri f rem (i+1))
  )
  | [] -> []
;;
let list_filteri f l = list_filteri f l 0;;

(* Existe dans le module List seulement à partir de Ocaml 4.12 et j'ai Ocaml 4.08 *)
let list_are_equals l1 l2 =
  try
    let eq a b = a = b in
    List.for_all2 eq l1 l2
  with
  | _ -> false

let list_find_i l x =
  let rec find l x n =
    match l with
    | a::rem -> if a=x then n else find rem x (n+1)
    | _ -> raise (Failure "index not in list")
  in
  find l x 0;;

let raw_of_val v =
  match v with
  | Str s -> "\"" ^ s ^ "\""
  | Int i -> Printf.sprintf "%d" i

let sprint_val v =
  match v with
  | Str s -> "\"" ^ s ^ "\""
  | Int i -> Printf.sprintf "%d" i
  | Null -> "null"

let val_of_raw raw_val =
  if raw_val.[0] == '"' && raw_val.[(String.length raw_val) - 1] == '"'
    then Str (String.sub raw_val 1 ((String.length raw_val)-2))
  else
    try
      Int (int_of_string raw_val)
    with
    | Failure "int_of_string" -> Null

let type_of_raw str =
  match str with
  | "Str" -> Str " "
  | "Int" -> Int 0
  | s -> error (Printf.sprintf "unknown type %s" s)

let raw_of_type t =
  match t with
  | Int _ -> "Int"
  | Str _ -> "Str"
  | Null -> "null"

let get_table header types body =
  let is_of_wrong_size row = (List.length row != List.length header) in

  if is_of_wrong_size types then error ("Wrong format : number of types is not the same as number of cols");
  let types_l = List.map type_of_raw types in

  let is_wrongly_typed row = (
    let is_of_wrong_type v t = (
      match (v,t) with
      | Null, _ -> false
      | Int i, Int _ -> false
      | Str s, Str _ -> false
      | _ -> error "incorrect type"; true
    ) in
    List.exists2 is_of_wrong_type row types_l
  ) in

  if (List.exists is_of_wrong_size body) || (List.exists is_wrongly_typed body) then error ("Wrong format : number of values is not the same as number of cols");
  {header= header; types= types_l; body= body}
;;


