Open Utils;

type filtre =
| Sup_filtre of (filtre * filtre_op * filtre)
| Condition of (filtre_obj * cond_op * filtre_obj)

type filtre_op =
| AND
| OR

type cond_op =
| Leq
| Lt
| Geq
| Gt
| Eq

type filtre_obj =
| Filtre_col of string
| Filtre_Val of value