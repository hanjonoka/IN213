type token =
  | IDENT of (string)
  | STRING of (string)
  | EQUAL
  | SEMI
  | LPAR
  | RPAR
  | OPEN
  | COMMIT
  | AS
  | TO
  | SELECT
  | FROM
  | LET

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Dblast.expr
