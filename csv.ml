type table = { mutable header: string list; mutable body: string list list }

let load file_name =
  try
    let ic = open_in file_name in
    let header_line = input_line ic in
    let header_list = String.split_on_char ',' header_line in
    let extract_val str = String.sub str 1 ((String.length str)-2) in
    (* Printf.printf "%s\n" header_line; *)
    let tb = {header= (List.map extract_val header_list); body= []} in
    try
      while true do
        let new_line_list = String.split_on_char ',' (input_line ic) in
        tb.body <- ((List.map extract_val new_line_list) :: tb.body)
      done;
      tb
    with
    | End_of_file -> tb
  with
  | _ -> raise (Failure "could not read file")
;;

let rec fprint_list oc liste =
  match liste with
  | x::[] -> Printf.fprintf oc "%s" x
  | x::rem -> Printf.fprintf oc "%s\",\"" x; fprint_list oc rem
  | [] -> ()
;;

let print_table oc table =
  Printf.fprintf oc "\"%a\"\n" fprint_list table.header;
  let rec print_body body = (
    match body with
    | l::[] -> Printf.fprintf oc "\"%a\"" fprint_list l
    | l::rem -> Printf.fprintf oc "\"%a\"\n" fprint_list l; print_body rem
    | [] -> ()
  ) in
  print_body table.body;
  flush oc
;;

let write file_name table =
  try
    let oc = open_out file_name in
    print_table oc table    
  with
  | _ -> raise (Failure "could not commit to file")
;;
