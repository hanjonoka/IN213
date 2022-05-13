type token =
  | IDENT of (string)
  | INT of (int)
  | STRING of (string)
  | EQUAL
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

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Dblast.expr
