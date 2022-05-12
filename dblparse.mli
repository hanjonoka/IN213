type token =
  | IDENT of (string)
  | STRING of (string)
  | SEMI
  | OPEN
  | COMMIT
  | AS
  | TO

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Dblast.expr
