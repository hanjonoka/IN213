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

type mutable_int_list = {mutable l: int list}