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

open Parsing;;
let _ = parse_error;;
# 2 "dblparse.mly"
open Dblast ;;
# 36 "dblparse.ml"
let yytransl_const = [|
  260 (* EQUAL *);
  261 (* LT *);
  262 (* LEQ *);
  263 (* GT *);
  264 (* GEQ *);
  265 (* NEQ *);
  267 (* SEMI *);
  268 (* LPAR *);
  269 (* RPAR *);
  270 (* LCURL *);
  271 (* RCURL *);
  272 (* LBRAC *);
  273 (* RBRAC *);
  274 (* OPEN *);
  275 (* COMMIT *);
  276 (* AS *);
  277 (* TO *);
  278 (* SELECT *);
  279 (* FROM *);
  280 (* LET *);
  281 (* INSERT *);
  282 (* INTO *);
  283 (* WHERE *);
  284 (* PROD *);
    0|]

let yytransl_block = [|
  257 (* IDENT *);
  258 (* INT *);
  259 (* STRING *);
  266 (* FILTRE_OP *);
    0|]

let yylhs = "\255\255\
\001\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\004\000\004\000\004\000\004\000\004\000\004\000\
\006\000\006\000\010\000\010\000\010\000\011\000\011\000\008\000\
\008\000\005\000\005\000\002\000\002\000\007\000\007\000\009\000\
\012\000\012\000\012\000\012\000\012\000\012\000\000\000"

let yylen = "\002\000\
\002\000\004\000\004\000\004\000\004\000\002\000\004\000\004\000\
\001\000\003\000\006\000\014\000\017\000\007\000\001\000\003\000\
\002\000\000\000\003\000\003\000\003\000\001\000\001\000\005\000\
\000\000\002\000\000\000\001\000\001\000\002\000\000\000\001\000\
\001\000\001\000\001\000\001\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\032\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\039\000\000\000\000\000\015\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\001\000\000\000\010\000\016\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\
\002\000\005\000\004\000\026\000\000\000\000\000\008\000\000\000\
\000\000\000\000\000\000\000\000\000\000\011\000\000\000\000\000\
\022\000\028\000\029\000\000\000\023\000\000\000\000\000\000\000\
\000\000\000\000\000\000\033\000\034\000\035\000\036\000\037\000\
\038\000\000\000\000\000\019\000\000\000\021\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\030\000\000\000\000\000\
\012\000\000\000\000\000\000\000\000\000\000\000\013\000\000\000\
\024\000"

let yydgoto = "\002\000\
\011\000\061\000\012\000\013\000\034\000\054\000\084\000\091\000\
\014\000\062\000\063\000\074\000"

let yysindex = "\003\000\
\002\255\000\000\000\000\002\255\248\254\084\255\017\255\028\255\
\059\255\001\255\000\000\054\255\050\255\000\000\061\255\253\254\
\094\255\076\255\077\255\080\255\097\255\095\255\001\255\047\255\
\000\000\099\255\000\000\000\000\097\255\101\255\102\255\085\255\
\097\255\082\255\001\255\253\254\103\255\083\255\089\255\000\000\
\000\000\000\000\000\000\000\000\001\255\050\255\000\000\001\255\
\092\255\016\255\087\255\108\255\049\255\000\000\109\255\097\255\
\000\000\000\000\000\000\049\255\000\000\104\255\072\255\083\255\
\096\255\024\255\049\255\000\000\000\000\000\000\000\000\000\000\
\000\000\081\255\100\255\000\000\104\255\000\000\009\255\091\255\
\091\255\091\255\091\255\098\255\105\255\000\000\106\255\107\255\
\000\000\091\255\110\255\091\255\111\255\112\255\000\000\107\255\
\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\113\255\000\000\000\000\000\000\
\000\000\000\000\000\000\078\255\114\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\115\255\000\000\000\000\000\000\
\052\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\079\255\000\000\000\000\
\000\000\252\254\000\000\000\000\000\000\000\000\000\000\115\255\
\000\000\000\000\000\000\000\000\000\000\019\255\000\000\022\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\027\255\000\000\000\000\000\000\
\116\255\116\255\116\255\000\000\000\000\000\000\000\000\117\255\
\000\000\000\000\000\000\116\255\000\000\000\000\000\000\117\255\
\000\000"

let yygindex = "\000\000\
\000\000\232\255\108\000\252\255\228\255\000\000\236\255\021\000\
\000\000\004\000\044\000\000\000"

let yytablesize = 137
let yytable = "\016\000\
\039\000\003\000\003\000\001\000\044\000\024\000\018\000\017\000\
\018\000\028\000\058\000\059\000\023\000\004\000\005\000\005\000\
\026\000\020\000\036\000\006\000\007\000\018\000\008\000\008\000\
\080\000\009\000\010\000\065\000\021\000\017\000\046\000\017\000\
\014\000\067\000\014\000\026\000\076\000\020\000\017\000\020\000\
\050\000\014\000\053\000\051\000\017\000\017\000\020\000\014\000\
\014\000\057\000\058\000\059\000\020\000\020\000\081\000\082\000\
\083\000\083\000\083\000\022\000\060\000\085\000\086\000\066\000\
\025\000\092\000\026\000\083\000\027\000\026\000\077\000\094\000\
\037\000\027\000\027\000\068\000\069\000\070\000\071\000\072\000\
\073\000\057\000\058\000\059\000\018\000\042\000\019\000\043\000\
\006\000\007\000\006\000\007\000\058\000\059\000\029\000\030\000\
\031\000\033\000\035\000\038\000\032\000\040\000\041\000\047\000\
\045\000\049\000\055\000\052\000\056\000\064\000\048\000\015\000\
\075\000\067\000\087\000\079\000\097\000\078\000\000\000\000\000\
\089\000\088\000\090\000\009\000\000\000\095\000\093\000\000\000\
\096\000\000\000\000\000\027\000\031\000\025\000\000\000\000\000\
\027\000"

let yycheck = "\004\000\
\029\000\001\001\001\001\001\000\033\000\010\000\011\001\016\001\
\013\001\013\001\002\001\003\001\012\001\012\001\014\001\014\001\
\020\001\001\001\023\000\018\001\019\001\026\001\022\001\022\001\
\016\001\024\001\025\001\056\000\001\001\011\001\035\000\013\001\
\011\001\010\001\013\001\020\001\013\001\011\001\020\001\013\001\
\045\000\020\001\027\001\048\000\026\001\027\001\020\001\026\001\
\027\001\001\001\002\001\003\001\026\001\027\001\079\000\080\000\
\081\000\082\000\083\000\001\001\012\001\082\000\083\000\060\000\
\011\001\090\000\020\001\092\000\017\001\020\001\067\000\092\000\
\026\001\013\001\023\001\004\001\005\001\006\001\007\001\008\001\
\009\001\001\001\002\001\003\001\001\001\001\001\003\001\003\001\
\011\001\011\001\013\001\013\001\002\001\003\001\001\001\020\001\
\020\001\001\001\004\001\001\001\021\001\001\001\001\001\001\001\
\023\001\017\001\020\001\016\001\001\001\001\001\028\001\004\000\
\017\001\010\001\017\001\016\001\096\000\074\000\255\255\255\255\
\015\001\017\001\016\001\011\001\255\255\015\001\017\001\255\255\
\017\001\255\255\255\255\017\001\017\001\017\001\255\255\255\255\
\023\001"

let yynames_const = "\
  EQUAL\000\
  LT\000\
  LEQ\000\
  GT\000\
  GEQ\000\
  NEQ\000\
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
  WHERE\000\
  PROD\000\
  "

let yynames_block = "\
  IDENT\000\
  INT\000\
  STRING\000\
  FILTRE_OP\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 19 "dblparse.mly"
                (_1)
# 220 "dblparse.ml"
               : Dblast.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 24 "dblparse.mly"
                                    ( EOpen(_2,_4) )
# 228 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 25 "dblparse.mly"
                                    ( EOpen(_2,_4) )
# 236 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 26 "dblparse.mly"
                                    ( ECommit(_2, _4) )
# 244 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 27 "dblparse.mly"
                                    ( ECommit(_2, _4) )
# 252 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 28 "dblparse.mly"
                                    ( ECommit(_2, (_2 ^ ".csv")))
# 259 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'table_expr) in
    Obj.repr(
# 29 "dblparse.mly"
                                 ( ELet(_2, _4) )
# 267 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'table_expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 30 "dblparse.mly"
                                 ( EInsert(_2, _4) )
# 275 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'table_expr) in
    Obj.repr(
# 31 "dblparse.mly"
                                 (_1)
# 282 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 32 "dblparse.mly"
                 (_2)
# 289 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : 'seqident) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'table_expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'where) in
    Obj.repr(
# 36 "dblparse.mly"
                                              ( ESelect(_2::_3, _5, _6) )
# 299 "dblparse.ml"
               : 'table_expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 11 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 10 : 'seqident) in
    let _7 = (Parsing.peek_val __caml_parser_env 7 : string) in
    let _8 = (Parsing.peek_val __caml_parser_env 6 : 'seqident) in
    let _11 = (Parsing.peek_val __caml_parser_env 3 : Utils.value) in
    let _12 = (Parsing.peek_val __caml_parser_env 2 : 'seqvalue) in
    Obj.repr(
# 37 "dblparse.mly"
                                                                                                                     (ETable(_3::_4, _7::_8, [_11::_12]))
# 311 "dblparse.ml"
               : 'table_expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 14 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 13 : 'seqident) in
    let _7 = (Parsing.peek_val __caml_parser_env 10 : string) in
    let _8 = (Parsing.peek_val __caml_parser_env 9 : 'seqident) in
    let _12 = (Parsing.peek_val __caml_parser_env 5 : Utils.value) in
    let _13 = (Parsing.peek_val __caml_parser_env 4 : 'seqvalue) in
    let _15 = (Parsing.peek_val __caml_parser_env 2 : 'row_vals) in
    Obj.repr(
# 38 "dblparse.mly"
                                                                                                                     (ETable(_3::_4, _7::_8, (_12::_13)::_15))
# 324 "dblparse.ml"
               : 'table_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 6 : 'table_expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'table_expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 39 "dblparse.mly"
                                                             ( EProd(_1, _3, _5, _7) )
# 334 "dblparse.ml"
               : 'table_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'atom) in
    Obj.repr(
# 40 "dblparse.mly"
                                   ( _1 )
# 341 "dblparse.ml"
               : 'table_expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'table_expr) in
    Obj.repr(
# 41 "dblparse.mly"
                       (_2)
# 348 "dblparse.ml"
               : 'table_expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'filter_expr) in
    Obj.repr(
# 45 "dblparse.mly"
                    (_2)
# 355 "dblparse.ml"
               : 'where))
; (fun __caml_parser_env ->
    Obj.repr(
# 46 "dblparse.mly"
                    (ECond(Filtre_val (Int 1), "=", Filtre_val (Int 1)))
# 361 "dblparse.ml"
               : 'where))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'filter_expr) in
    Obj.repr(
# 49 "dblparse.mly"
                                    ( _2 )
# 368 "dblparse.ml"
               : 'filter_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'filter_expr) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'filter_expr) in
    Obj.repr(
# 50 "dblparse.mly"
                                    ( EFiltre(_1,_2,_3) )
# 377 "dblparse.ml"
               : 'filter_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'filter_obj) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'op) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'filter_obj) in
    Obj.repr(
# 51 "dblparse.mly"
                                    ( ECond(_1,_2,_3) )
# 386 "dblparse.ml"
               : 'filter_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 54 "dblparse.mly"
        (Filtre_col (_1))
# 393 "dblparse.ml"
               : 'filter_obj))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Utils.value) in
    Obj.repr(
# 55 "dblparse.mly"
        (Filtre_val (_1))
# 400 "dblparse.ml"
               : 'filter_obj))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : Utils.value) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'seqvalue) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'row_vals) in
    Obj.repr(
# 58 "dblparse.mly"
                                      ((_2 :: _3) :: _5)
# 409 "dblparse.ml"
               : 'row_vals))
; (fun __caml_parser_env ->
    Obj.repr(
# 59 "dblparse.mly"
                                      ([])
# 415 "dblparse.ml"
               : 'row_vals))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'seqident) in
    Obj.repr(
# 62 "dblparse.mly"
                  ( _1 :: _2 )
# 423 "dblparse.ml"
               : 'seqident))
; (fun __caml_parser_env ->
    Obj.repr(
# 63 "dblparse.mly"
                  ( [] )
# 429 "dblparse.ml"
               : 'seqident))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 67 "dblparse.mly"
          ( Int _1 )
# 436 "dblparse.ml"
               : Utils.value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 68 "dblparse.mly"
          ( Str _1 )
# 443 "dblparse.ml"
               : Utils.value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Utils.value) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'seqvalue) in
    Obj.repr(
# 71 "dblparse.mly"
                  ( _1 :: _2 )
# 451 "dblparse.ml"
               : 'seqvalue))
; (fun __caml_parser_env ->
    Obj.repr(
# 72 "dblparse.mly"
                  ( [] )
# 457 "dblparse.ml"
               : 'seqvalue))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 76 "dblparse.mly"
                 ( EIdent(_1))
# 464 "dblparse.ml"
               : 'atom))
; (fun __caml_parser_env ->
    Obj.repr(
# 80 "dblparse.mly"
        ("=")
# 470 "dblparse.ml"
               : 'op))
; (fun __caml_parser_env ->
    Obj.repr(
# 81 "dblparse.mly"
        ("<")
# 476 "dblparse.ml"
               : 'op))
; (fun __caml_parser_env ->
    Obj.repr(
# 82 "dblparse.mly"
        ("<=")
# 482 "dblparse.ml"
               : 'op))
; (fun __caml_parser_env ->
    Obj.repr(
# 83 "dblparse.mly"
        (">")
# 488 "dblparse.ml"
               : 'op))
; (fun __caml_parser_env ->
    Obj.repr(
# 84 "dblparse.mly"
        (">=")
# 494 "dblparse.ml"
               : 'op))
; (fun __caml_parser_env ->
    Obj.repr(
# 85 "dblparse.mly"
        ("!=")
# 500 "dblparse.ml"
               : 'op))
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
