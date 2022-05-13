open Utils;;

let load file_name =
  try
    let ic = open_in file_name in
    let header_line = input_line ic in
    let header_list = String.split_on_char ',' header_line in
    let extract_raw str = String.sub str 1 ((String.length str)-2) in
    let header = List.map extract_raw header_list in
    let pos = pos_in ic in
    let len = in_channel_length ic in
    let body_raw = really_input_string ic (len-pos) in
    let body_lines = String.split_on_char '\n' body_raw in
    let body_string = List.map (String.split_on_char ',') body_lines in
    let body = List.map (List.map val_of_raw) body_string in
    (header, body)

    (* let extract_val str = val_of_raw (extract_raw str) in
    (* Printf.printf "%s\n" header_line; *)
    let nb_cols = List.length header_list in
    let tb = {header= (List.map extract_raw header_list); body= []} in
    try
      while true do
        let new_line_list = String.split_on_char ',' (input_line ic) in
        if List.length new_line_list != nb_cols then (raise (Failure "Wrong format"));
        tb.body <- ((List.map extract_val new_line_list) :: tb.body)
      done;
      tb
    with
    | End_of_file -> tb *)
  with
  | _ -> raise (Failure "could not read file")
;;

let print_table oc table =
  Printf.fprintf oc "\"%s\"\n" (String.concat "\",\"" table.header);
  let rec print_body body = (
    match body with
    | l::[] -> Printf.fprintf oc "%s" (String.concat "," (List.map sprint_val l))
    | l::rem -> Printf.fprintf oc "%s\n" (String.concat "," (List.map sprint_val l)); print_body rem
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
