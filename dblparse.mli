type token =
  | IDENT of (string)
  | INT of (int)
  | STRING of (string)
  | EQUAL
  | LT
  | LEQ
  | GT
  | GEQ
  | NEQ
  | FILTRE_OP of (string)
  | SEMI
  | LPAR
  | RPAR
  | LCURL
  | RCURL
  | LBRAC
  | RBRAC
  | OPEN
  | COMMIT
  | AS
  | TO
  | SELECT
  | FROM
  | LET
  | INSERT
  | INTO
  | WHERE
  | PROD

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Dblast.expr
