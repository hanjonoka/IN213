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

open Parsing;;
let _ = parse_error;;
# 2 "dblparse.mly"
open Dblast ;;
# 28 "dblparse.ml"
let yytransl_const = [|
  260 (* EQUAL *);
  261 (* SEMI *);
  262 (* LPAR *);
  263 (* RPAR *);
  264 (* LCURL *);
  265 (* RCURL *);
  266 (* LBRAC *);
  267 (* RBRAC *);
  268 (* OPEN *);
  269 (* COMMIT *);
  270 (* AS *);
  271 (* TO *);
  272 (* SELECT *);
  273 (* FROM *);
  274 (* LET *);
  275 (* INSERT *);
  276 (* INTO *);
    0|]

let yytransl_block = [|
  257 (* IDENT *);
  258 (* INT *);
  259 (* STRING *);
    0|]

let yylhs = "\255\255\
\001\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\004\000\004\000\004\000\004\000\004\000\007\000\
\007\000\005\000\005\000\002\000\002\000\006\000\006\000\008\000\
\000\000"

let yylen = "\002\000\
\002\000\004\000\004\000\004\000\004\000\002\000\004\000\004\000\
\001\000\003\000\005\000\014\000\017\000\001\000\003\000\005\000\
\000\000\002\000\000\000\001\000\001\000\002\000\000\000\001\000\
\002\000"

let yydefred = "\000\000\
\000\000\000\000\024\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\025\000\000\000\009\000\014\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\001\000\010\000\015\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\003\000\002\000\005\000\
\004\000\018\000\000\000\007\000\008\000\000\000\011\000\000\000\
\000\000\000\000\000\000\000\000\020\000\021\000\000\000\000\000\
\000\000\000\000\000\000\000\000\022\000\000\000\000\000\012\000\
\000\000\000\000\000\000\000\000\000\000\013\000\000\000\016\000"

let yydgoto = "\002\000\
\011\000\058\000\012\000\013\000\033\000\059\000\066\000\014\000"

let yysindex = "\003\000\
\002\255\000\000\000\000\002\255\019\255\031\255\039\255\040\255\
\041\255\001\255\000\000\038\255\000\000\000\000\037\255\042\255\
\044\255\033\255\034\255\036\255\045\255\046\255\001\255\043\255\
\000\000\000\000\000\000\045\255\051\255\052\255\035\255\045\255\
\047\255\001\255\042\255\053\255\048\255\000\000\000\000\000\000\
\000\000\000\000\054\255\000\000\000\000\050\255\000\000\055\255\
\045\255\056\255\058\255\025\255\000\000\000\000\009\255\009\255\
\009\255\009\255\059\255\060\255\000\000\049\255\062\255\000\000\
\009\255\063\255\009\255\057\255\064\255\000\000\062\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\032\255\061\255\000\000\000\000\000\000\
\000\000\000\000\000\000\065\255\000\000\000\000\000\000\014\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\065\255\000\000\000\000\000\000\000\000\000\000\000\000\066\255\
\066\255\066\255\000\000\000\000\000\000\000\000\068\255\000\000\
\000\000\000\000\066\255\000\000\000\000\000\000\068\255\000\000"

let yygindex = "\000\000\
\000\000\217\255\053\000\252\255\229\255\222\255\246\255\000\000"

let yytablesize = 79
let yytable = "\016\000\
\037\000\003\000\003\000\001\000\042\000\024\000\023\000\004\000\
\005\000\005\000\053\000\054\000\056\000\006\000\007\000\057\000\
\008\000\008\000\035\000\009\000\010\000\050\000\060\000\061\000\
\019\000\067\000\053\000\054\000\017\000\044\000\019\000\018\000\
\069\000\019\000\055\000\040\000\006\000\041\000\006\000\020\000\
\021\000\022\000\025\000\026\000\028\000\032\000\029\000\030\000\
\027\000\034\000\031\000\038\000\039\000\045\000\047\000\049\000\
\015\000\064\000\046\000\048\000\072\000\000\000\036\000\043\000\
\000\000\070\000\051\000\052\000\000\000\062\000\063\000\065\000\
\000\000\068\000\071\000\019\000\023\000\019\000\017\000"

let yycheck = "\004\000\
\028\000\001\001\001\001\001\000\032\000\010\000\006\001\006\001\
\008\001\008\001\002\001\003\001\052\000\012\001\013\001\055\000\
\016\001\016\001\023\000\018\001\019\001\049\000\057\000\058\000\
\011\001\065\000\002\001\003\001\010\001\034\000\017\001\001\001\
\067\000\003\001\010\001\001\001\005\001\003\001\007\001\001\001\
\001\001\001\001\005\001\007\001\001\001\001\001\014\001\014\001\
\007\001\004\001\015\001\001\001\001\001\001\001\001\001\001\001\
\004\000\009\001\011\001\010\001\071\000\255\255\020\001\017\001\
\255\255\009\001\011\001\010\001\255\255\011\001\011\001\010\001\
\255\255\011\001\011\001\011\001\011\001\017\001\011\001"

let yynames_const = "\
  EQUAL\000\
  SEMI\000\
  LPAR\000\
  RPAR\000\
  LCURL\000\
  RCURL\000\
  LBRAC\000\
  RBRAC\000\
  OPEN\000\
  COMMIT\000\
  AS\000\
  TO\000\
  SELECT\000\
  FROM\000\
  LET\000\
  INSERT\000\
  INTO\000\
  "

let yynames_block = "\
  IDENT\000\
  INT\000\
  STRING\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 18 "dblparse.mly"
                (_1)
# 164 "dblparse.ml"
               : Dblast.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 23 "dblparse.mly"
                                    ( EOpen(_2,_4) )
# 172 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 24 "dblparse.mly"
                                    ( EOpen(_2,_4) )
# 180 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 25 "dblparse.mly"
                                    ( ECommit(_2, _4) )
# 188 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 26 "dblparse.mly"
                                    ( ECommit(_2, _4) )
# 196 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 27 "dblparse.mly"
                                    ( ECommit(_2, (_2 ^ ".csv")))
# 203 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'not_void_expr) in
    Obj.repr(
# 28 "dblparse.mly"
                                    ( ELet(_2, _4) )
# 211 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'not_void_expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 29 "dblparse.mly"
                                    ( EInsert(_2, _4) )
# 219 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'not_void_expr) in
    Obj.repr(
# 30 "dblparse.mly"
                                    (_1)
# 226 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 31 "dblparse.mly"
                 (_2)
# 233 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'seqident) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 35 "dblparse.mly"
                                   ( ESelect(_2::_3, _5) )
# 242 "dblparse.ml"
               : 'not_void_expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 11 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 10 : 'seqident) in
    let _7 = (Parsing.peek_val __caml_parser_env 7 : string) in
    let _8 = (Parsing.peek_val __caml_parser_env 6 : 'seqident) in
    let _11 = (Parsing.peek_val __caml_parser_env 3 : Utils.value) in
    let _12 = (Parsing.peek_val __caml_parser_env 2 : 'seqvalue) in
    Obj.repr(
# 36 "dblparse.mly"
                                                                                                                     (ETable(_3::_4, _7::_8, [_11::_12]))
# 254 "dblparse.ml"
               : 'not_void_expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 14 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 13 : 'seqident) in
    let _7 = (Parsing.peek_val __caml_parser_env 10 : string) in
    let _8 = (Parsing.peek_val __caml_parser_env 9 : 'seqident) in
    let _12 = (Parsing.peek_val __caml_parser_env 5 : Utils.value) in
    let _13 = (Parsing.peek_val __caml_parser_env 4 : 'seqvalue) in
    let _15 = (Parsing.peek_val __caml_parser_env 2 : 'row_vals) in
    Obj.repr(
# 37 "dblparse.mly"
                                                                                                                     (ETable(_3::_4, _7::_8, (_12::_13)::_15))
# 267 "dblparse.ml"
               : 'not_void_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'atom) in
    Obj.repr(
# 38 "dblparse.mly"
                                   ( _1 )
# 274 "dblparse.ml"
               : 'not_void_expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'not_void_expr) in
    Obj.repr(
# 39 "dblparse.mly"
                          (_2)
# 281 "dblparse.ml"
               : 'not_void_expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : Utils.value) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'seqvalue) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'row_vals) in
    Obj.repr(
# 43 "dblparse.mly"
                                      ((_2 :: _3) :: _5)
# 290 "dblparse.ml"
               : 'row_vals))
; (fun __caml_parser_env ->
    Obj.repr(
# 44 "dblparse.mly"
                                      ([])
# 296 "dblparse.ml"
               : 'row_vals))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'seqident) in
    Obj.repr(
# 47 "dblparse.mly"
                  ( _1 :: _2 )
# 304 "dblparse.ml"
               : 'seqident))
; (fun __caml_parser_env ->
    Obj.repr(
# 48 "dblparse.mly"
                  ( [] )
# 310 "dblparse.ml"
               : 'seqident))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 52 "dblparse.mly"
          ( Int _1 )
# 317 "dblparse.ml"
               : Utils.value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 53 "dblparse.mly"
          ( Str _1 )
# 324 "dblparse.ml"
               : Utils.value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Utils.value) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'seqvalue) in
    Obj.repr(
# 56 "dblparse.mly"
                  ( _1 :: _2 )
# 332 "dblparse.ml"
               : 'seqvalue))
; (fun __caml_parser_env ->
    Obj.repr(
# 57 "dblparse.mly"
                  ( [] )
# 338 "dblparse.ml"
               : 'seqvalue))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 61 "dblparse.mly"
                 ( EIdent(_1))
# 345 "dblparse.ml"
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
