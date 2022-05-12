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

open Parsing;;
let _ = parse_error;;
# 2 "dblparse.mly"
open Dblast ;;
# 21 "dblparse.ml"
let yytransl_const = [|
  259 (* EQUAL *);
  260 (* SEMI *);
  261 (* LPAR *);
  262 (* RPAR *);
  263 (* OPEN *);
  264 (* COMMIT *);
  265 (* AS *);
  266 (* TO *);
  267 (* SELECT *);
  268 (* FROM *);
  269 (* LET *);
    0|]

let yytransl_block = [|
  257 (* IDENT *);
  258 (* STRING *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\003\000\003\000\004\000\004\000\005\000\005\000\000\000"

let yylen = "\002\000\
\002\000\004\000\004\000\004\000\004\000\002\000\004\000\001\000\
\005\000\001\000\002\000\000\000\001\000\003\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\013\000\000\000\000\000\000\000\000\000\000\000\
\015\000\000\000\008\000\010\000\000\000\000\000\000\000\000\000\
\000\000\000\000\001\000\014\000\000\000\000\000\000\000\000\000\
\000\000\000\000\003\000\002\000\005\000\004\000\011\000\000\000\
\007\000\009\000"

let yydgoto = "\002\000\
\009\000\010\000\011\000\025\000\012\000"

let yysindex = "\013\000\
\255\254\000\000\000\000\255\254\001\255\015\255\016\255\017\255\
\000\000\018\255\000\000\000\000\013\255\011\255\012\255\014\255\
\022\255\023\255\000\000\000\000\024\255\026\255\007\255\022\255\
\019\255\000\255\000\000\000\000\000\000\000\000\000\000\027\255\
\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\009\255\
\020\255\000\000\000\000\000\000\000\000\000\000\000\000\020\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000"

let yygindex = "\000\000\
\000\000\025\000\004\000\009\000\000\000"

let yytablesize = 33
let yytable = "\003\000\
\003\000\014\000\015\000\004\000\004\000\005\000\006\000\029\000\
\030\000\007\000\007\000\008\000\006\000\001\000\006\000\016\000\
\017\000\018\000\020\000\021\000\022\000\019\000\024\000\023\000\
\027\000\026\000\028\000\034\000\013\000\033\000\032\000\012\000\
\031\000"

let yycheck = "\001\001\
\001\001\001\001\002\001\005\001\005\001\007\001\008\001\001\001\
\002\001\011\001\011\001\013\001\004\001\001\000\006\001\001\001\
\001\001\001\001\006\001\009\001\009\001\004\001\001\001\010\001\
\001\001\003\001\001\001\001\001\004\000\026\000\012\001\012\001\
\024\000"

let yynames_const = "\
  EQUAL\000\
  SEMI\000\
  LPAR\000\
  RPAR\000\
  OPEN\000\
  COMMIT\000\
  AS\000\
  TO\000\
  SELECT\000\
  FROM\000\
  LET\000\
  "

let yynames_block = "\
  IDENT\000\
  STRING\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 16 "dblparse.mly"
                (_1)
# 117 "dblparse.ml"
               : Dblast.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 21 "dblparse.mly"
                                    ( EOpen(_2,_4) )
# 125 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 22 "dblparse.mly"
                                    ( EOpen(_2,_4) )
# 133 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 23 "dblparse.mly"
                                    ( ECommit(_2, _4) )
# 141 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 24 "dblparse.mly"
                                    ( ECommit(_2, _4) )
# 149 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 25 "dblparse.mly"
                                    ( ECommit(_2, (_2 ^ ".csv")))
# 156 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'not_void_expr) in
    Obj.repr(
# 26 "dblparse.mly"
                                    ( ELet(_2, _4) )
# 164 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'not_void_expr) in
    Obj.repr(
# 27 "dblparse.mly"
                                    (_1)
# 171 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'seqident) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 31 "dblparse.mly"
                                    ( ESelect(_2::_3, _5) )
# 180 "dblparse.ml"
               : 'not_void_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'atom) in
    Obj.repr(
# 32 "dblparse.mly"
                                ( _1 )
# 187 "dblparse.ml"
               : 'not_void_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'seqident) in
    Obj.repr(
# 36 "dblparse.mly"
                  ( _1 :: _2 )
# 195 "dblparse.ml"
               : 'seqident))
; (fun __caml_parser_env ->
    Obj.repr(
# 37 "dblparse.mly"
                  ( [] )
# 201 "dblparse.ml"
               : 'seqident))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 41 "dblparse.mly"
                 ( EIdent(_1))
# 208 "dblparse.ml"
               : 'atom))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 42 "dblparse.mly"
                 (_2)
# 215 "dblparse.ml"
               : 'atom))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Dblast.expr)
