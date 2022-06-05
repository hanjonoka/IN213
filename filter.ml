open Utils;;



type filtre_op =
| AND_op
| OR_op

type cond_op =
| Leq
| Lt
| Geq
| Gt
| Eq
| Neq

type filtre_obj =
| Filtre_col of string
| Filtre_val of value

type filtre =
| Sup_filtre of (filtre * filtre_op * filtre)
| Condition of (filtre_obj * cond_op * filtre_obj)

let sprint_obj obj =
  match obj with
  | Filtre_col s -> s
  | Filtre_val v -> raw_of_val v
;;

let rec apply_filter filtre header row =
  match filtre with
  | Sup_filtre (f1, op, f2) -> (
    match op with
    | AND_op -> (apply_filter f1 header row) && (apply_filter f2 header row)
    | OR_op -> (apply_filter f1 header row) || (apply_filter f2 header row)
  )
  | Condition (obj1, op, obj2) -> (
    match op with
    | Eq -> (
      match obj1, obj2 with
      | Filtre_val (Int i1), Filtre_val (Int i2) -> i1=i2
      | Filtre_val (Str s1), Filtre_val (Str s2) -> s1=s2
      | Filtre_col cname1, _ -> (
        let ind1 = list_find_i header cname1 in
        match obj2 with
        | Filtre_val (Int i2) -> (
          match (List.nth row ind1) with
          | Int i1 -> i1=i2
          | _ -> error (Printf.sprintf "cannot compare type of %s and Int" cname1)
        )
        | Filtre_val (Str s2) -> (
          match (List.nth row ind1) with
          | Str s1 -> s1=s2
          | _ -> error (Printf.sprintf "cannot compare type of %s and Str" cname1)
        )
        | Filtre_val Null -> (
          match (List.nth row ind1) with
          | Null -> true
          | _ -> error (Printf.sprintf "cannot compare type of %s and Null" cname1)
        )
        | Filtre_col cname2 -> (
          let ind2 = list_find_i header cname2 in
          match (List.nth row ind1, List.nth row ind2) with
          | Int i1, Int i2 -> i1=i2
          | Str s1, Str s2 -> s1=s2
          | Null, Null -> true
          | _,_ -> error (Printf.sprintf "columns %s and %s do not have same type" cname1 cname2)
        )
      )
      | _,_ -> error (Printf.sprintf "Cannot apply operator = to %s and %s" (sprint_obj obj1) (sprint_obj obj2))
    )
    | Neq -> (
      match obj1, obj2 with
      | Filtre_val (Int i1), Filtre_val (Int i2) -> i1=i2
      | Filtre_val (Str s1), Filtre_val (Str s2) -> s1=s2
      | Filtre_col cname1, _ -> (
        let ind1 = list_find_i header cname1 in
        match obj2 with
        | Filtre_val (Int i2) -> (
          match (List.nth row ind1) with
          | Int i1 -> i1!=i2
          | _ -> error (Printf.sprintf "cannot compare type of %s and Int" cname1)
        )
        | Filtre_val (Str s2) -> (
          match (List.nth row ind1) with
          | Str s1 -> s1!=s2
          | _ -> error (Printf.sprintf "cannot compare type of %s and Str" cname1)
        )
        | Filtre_val Null -> (
          match (List.nth row ind1) with
          | Null -> false
          | _ -> error (Printf.sprintf "cannot compare type of %s and Null" cname1)
        )
        | Filtre_col cname2 -> (
          let ind2 = list_find_i header cname2 in
          match (List.nth row ind1, List.nth row ind2) with
          | Int i1, Int i2 -> i1!=i2
          | Str s1, Str s2 -> s1!=s2
          | Null, Null -> true
          | _,_ -> error (Printf.sprintf "columns %s and %s do not have same type" cname1 cname2)
        )
      )
      | _,_ -> error (Printf.sprintf "Cannot apply operator != to %s and %s" (sprint_obj obj1) (sprint_obj obj2))
    )
    | Lt -> (
      match obj1, obj2 with
      | Filtre_val (Int i1), Filtre_val (Int i2) -> i1<i2
      | Filtre_col cname1, _ -> (
        let ind1 = list_find_i header cname1 in
        match obj2 with
        | Filtre_val (Int i2) -> (
          match (List.nth row ind1) with
          | Int i1 -> i1<i2
          | _ -> error (Printf.sprintf "cannot compare type of %s and Int" cname1)
        )
        | Filtre_col cname2 -> (
          let ind2 = list_find_i header cname2 in
          match (List.nth row ind1, List.nth row ind2) with
          | Int i1, Int i2 -> i1<i2
          | _,_ -> error (Printf.sprintf "cannot apply operator < to cols %s and %s" cname1 cname2)
        )
        | _ -> error (Printf.sprintf "Cannot apply operator < to %s and %s" (sprint_obj obj1) (sprint_obj obj2))
      )
      | _,_ -> error (Printf.sprintf "Cannot apply operator < to %s and %s" (sprint_obj obj1) (sprint_obj obj2))
    )
    | Leq -> (
      match obj1, obj2 with
      | Filtre_val (Int i1), Filtre_val (Int i2) -> i1<=i2
      | Filtre_col cname1, _ -> (
        let ind1 = list_find_i header cname1 in
        match obj2 with
        | Filtre_val (Int i2) -> (
          match (List.nth row ind1) with
          | Int i1 -> i1<=i2
          | _ -> error (Printf.sprintf "cannot compare type of %s and Int" cname1)
        )
        | Filtre_col cname2 -> (
          let ind2 = list_find_i header cname2 in
          match (List.nth row ind1, List.nth row ind2) with
          | Int i1, Int i2 -> i1<=i2
          | _,_ -> error (Printf.sprintf "cannot apply operator <= to cols %s and %s" cname1 cname2)
        )
        | _ -> error (Printf.sprintf "Cannot apply operator <= to %s and %s" (sprint_obj obj1) (sprint_obj obj2))
      )
      | _,_ -> error (Printf.sprintf "Cannot apply operator <= to %s and %s" (sprint_obj obj1) (sprint_obj obj2))
    )
    | Gt -> (
      match obj1, obj2 with
      | Filtre_val (Int i1), Filtre_val (Int i2) -> i1>i2
      | Filtre_col cname1, _ -> (
        let ind1 = list_find_i header cname1 in
        match obj2 with
        | Filtre_val (Int i2) -> (
          match (List.nth row ind1) with
          | Int i1 -> i1>i2
          | _ -> error (Printf.sprintf "cannot compare type of %s and Int" cname1)
        )
        | Filtre_col cname2 -> (
          let ind2 = list_find_i header cname2 in
          match (List.nth row ind1, List.nth row ind2) with
          | Int i1, Int i2 -> i1>i2
          | _,_ -> error (Printf.sprintf "cannot apply operator > to cols %s and %s" cname1 cname2)
        )
        | _ -> error (Printf.sprintf "Cannot apply operator > to %s and %s" (sprint_obj obj1) (sprint_obj obj2))
      )
      | _,_ -> error (Printf.sprintf "Cannot apply operator > to %s and %s" (sprint_obj obj1) (sprint_obj obj2))
    )
    | Geq -> (
      match obj1, obj2 with
      | Filtre_val (Int i1), Filtre_val (Int i2) -> i1>=i2
      | Filtre_col cname1, _ -> (
        let ind1 = list_find_i header cname1 in
        match obj2 with
        | Filtre_val (Int i2) -> (
          match (List.nth row ind1) with
          | Int i1 -> i1>=i2
          | _ -> error (Printf.sprintf "cannot compare type of %s and Int" cname1)
        )
        | Filtre_col cname2 -> (
          let ind2 = list_find_i header cname2 in
          match (List.nth row ind1, List.nth row ind2) with
          | Int i1, Int i2 -> i1>=i2
          | _,_ -> error (Printf.sprintf "cannot apply operator >= to cols %s and %s" cname1 cname2)
        )
        | _ -> error (Printf.sprintf "Cannot apply operator >= to %s and %s" (sprint_obj obj1) (sprint_obj obj2))
      )
      | _,_ -> error (Printf.sprintf "Cannot apply operator >= to %s and %s" (sprint_obj obj1) (sprint_obj obj2))
    )
  )