type token =
  | IDENT of (string)
  | STRING of (string)
  | SEMI
  | OPEN
  | COMMIT
  | AS
  | TO

open Parsing;;
let _ = parse_error;;
# 2 "dblparse.mly"
open Dblast ;;


# 17 "dblparse.ml"
let yytransl_const = [|
  259 (* SEMI *);
  260 (* OPEN *);
  261 (* COMMIT *);
  262 (* AS *);
  263 (* TO *);
    0|]

let yytransl_block = [|
  257 (* IDENT *);
  258 (* STRING *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\002\000\002\000\004\000\004\000\
\003\000\000\000"

let yylen = "\002\000\
\002\000\004\000\004\000\004\000\004\000\001\000\002\000\000\000\
\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\009\000\000\000\000\000\010\000\000\000\006\000\
\000\000\000\000\000\000\001\000\000\000\000\000\000\000\003\000\
\002\000\005\000\004\000"

let yydgoto = "\002\000\
\006\000\007\000\008\000\000\000"

let yysindex = "\006\000\
\255\254\000\000\000\000\000\255\007\255\000\000\006\255\000\000\
\005\255\008\255\003\255\000\000\011\255\012\255\004\255\000\000\
\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\000\000\000\000"

let yytablesize = 14
let yytable = "\003\000\
\009\000\010\000\004\000\005\000\018\000\019\000\001\000\011\000\
\012\000\015\000\013\000\016\000\017\000\014\000"

let yycheck = "\001\001\
\001\001\002\001\004\001\005\001\001\001\002\001\001\000\001\001\
\003\001\007\001\006\001\001\001\001\001\006\001"

let yynames_const = "\
  SEMI\000\
  OPEN\000\
  COMMIT\000\
  AS\000\
  TO\000\
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
# 17 "dblparse.mly"
                (_1)
# 89 "dblparse.ml"
               : Dblast.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 22 "dblparse.mly"
                                ( EOpen(_2,_4) )
# 97 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 23 "dblparse.mly"
                                ( EOpen(_2,_4) )
# 105 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 24 "dblparse.mly"
                                ( ECommit(_2, _4) )
# 113 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 25 "dblparse.mly"
                                ( ECommit(_2, _4) )
# 121 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'atom) in
    Obj.repr(
# 26 "dblparse.mly"
                                ( _1 )
# 128 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'seqident) in
    Obj.repr(
# 30 "dblparse.mly"
                  ( _1 :: _2 )
# 136 "dblparse.ml"
               : 'seqident))
; (fun __caml_parser_env ->
    Obj.repr(
# 31 "dblparse.mly"
                  ( [] )
# 142 "dblparse.ml"
               : 'seqident))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 35 "dblparse.mly"
            ( EIdent(_1))
# 149 "dblparse.ml"
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
