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
  | WHERE
  | AND
  | PROD

open Parsing;;
let _ = parse_error;;
# 2 "dblparse.mly"
open Dblast ;;
# 31 "dblparse.ml"
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
  277 (* WHERE *);
  278 (* AND *);
  279 (* PROD *);
    0|]

let yytransl_block = [|
  257 (* IDENT *);
  258 (* INT *);
  259 (* STRING *);
    0|]

let yylhs = "\255\255\
\001\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\004\000\004\000\004\000\004\000\004\000\004\000\
\006\000\006\000\010\000\010\000\008\000\008\000\005\000\005\000\
\002\000\002\000\007\000\007\000\009\000\000\000"

let yylen = "\002\000\
\002\000\004\000\004\000\004\000\004\000\002\000\004\000\004\000\
\001\000\003\000\006\000\014\000\017\000\007\000\001\000\003\000\
\005\000\000\000\005\000\000\000\005\000\000\000\002\000\000\000\
\001\000\001\000\002\000\000\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\029\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\030\000\000\000\000\000\015\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\001\000\000\000\010\000\016\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\
\002\000\005\000\004\000\023\000\000\000\000\000\008\000\000\000\
\000\000\000\000\000\000\000\000\000\000\011\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\025\000\026\000\000\000\
\000\000\000\000\017\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\027\000\000\000\000\000\000\000\012\000\
\019\000\000\000\000\000\000\000\000\000\000\000\013\000\000\000\
\021\000"

let yydgoto = "\002\000\
\011\000\072\000\012\000\013\000\034\000\054\000\073\000\083\000\
\014\000\067\000"

let yysindex = "\016\000\
\014\255\000\000\000\000\014\255\019\255\056\255\047\255\055\255\
\064\255\039\255\000\000\062\255\058\255\000\000\063\255\028\255\
\068\255\059\255\065\255\066\255\070\255\071\255\039\255\254\254\
\000\000\073\255\000\000\000\000\070\255\075\255\076\255\060\255\
\070\255\067\255\039\255\028\255\077\255\069\255\072\255\000\000\
\000\000\000\000\000\000\000\000\039\255\058\255\000\000\039\255\
\078\255\037\255\079\255\081\255\084\255\000\000\085\255\070\255\
\083\255\069\255\080\255\011\255\086\255\000\000\000\000\082\255\
\001\255\088\255\000\000\011\255\011\255\090\255\011\255\011\255\
\087\255\011\255\089\255\000\000\092\255\082\255\093\255\000\000\
\000\000\011\255\091\255\011\255\096\255\095\255\000\000\093\255\
\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\094\255\000\000\000\000\000\000\
\000\000\000\000\000\000\057\255\097\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\098\255\000\000\000\000\000\000\
\043\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\061\255\000\000\000\000\
\000\000\018\255\000\000\000\000\000\000\000\000\000\000\098\255\
\000\000\029\255\000\000\000\000\000\000\000\000\000\000\032\255\
\000\000\000\000\000\000\000\000\099\255\000\000\099\255\099\255\
\000\000\000\000\000\000\000\000\000\000\032\255\100\255\000\000\
\000\000\000\000\000\000\099\255\000\000\000\000\000\000\100\255\
\000\000"

let yygindex = "\000\000\
\000\000\198\255\076\000\252\255\228\255\000\000\193\255\002\000\
\000\000\017\000"

let yytablesize = 114
let yytable = "\016\000\
\039\000\064\000\062\000\063\000\044\000\024\000\069\000\075\000\
\076\000\071\000\068\000\026\000\062\000\063\000\003\000\078\000\
\001\000\037\000\036\000\004\000\086\000\005\000\018\000\084\000\
\018\000\006\000\007\000\059\000\017\000\008\000\046\000\009\000\
\010\000\014\000\028\000\014\000\020\000\018\000\020\000\003\000\
\050\000\026\000\014\000\051\000\023\000\020\000\005\000\020\000\
\014\000\014\000\026\000\020\000\020\000\024\000\008\000\021\000\
\018\000\053\000\019\000\024\000\042\000\006\000\043\000\006\000\
\022\000\007\000\025\000\007\000\029\000\027\000\033\000\026\000\
\030\000\038\000\035\000\040\000\041\000\047\000\031\000\015\000\
\032\000\056\000\049\000\045\000\057\000\058\000\060\000\052\000\
\070\000\089\000\061\000\048\000\055\000\074\000\081\000\065\000\
\000\000\077\000\009\000\079\000\080\000\085\000\082\000\066\000\
\087\000\088\000\000\000\000\000\024\000\028\000\022\000\000\000\
\000\000\024\000"

let yycheck = "\004\000\
\029\000\060\000\002\001\003\001\033\000\010\000\065\000\071\000\
\072\000\068\000\010\001\014\001\002\001\003\001\001\001\074\000\
\001\000\020\001\023\000\006\001\084\000\008\001\005\001\082\000\
\007\001\012\001\013\001\056\000\010\001\016\001\035\000\018\001\
\019\001\005\001\007\001\007\001\005\001\020\001\007\001\001\001\
\045\000\014\001\014\001\048\000\006\001\014\001\008\001\001\001\
\020\001\021\001\014\001\020\001\021\001\011\001\016\001\001\001\
\001\001\021\001\003\001\017\001\001\001\005\001\003\001\007\001\
\001\001\005\001\005\001\007\001\001\001\007\001\001\001\014\001\
\014\001\001\001\004\001\001\001\001\001\001\001\014\001\004\000\
\015\001\001\001\011\001\017\001\001\001\001\001\004\001\010\001\
\001\001\088\000\011\001\023\001\014\001\004\001\078\000\010\001\
\255\255\011\001\005\001\011\001\009\001\011\001\010\001\022\001\
\009\001\011\001\255\255\255\255\011\001\011\001\011\001\255\255\
\255\255\017\001"

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
  WHERE\000\
  AND\000\
  PROD\000\
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
# 194 "dblparse.ml"
               : Dblast.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 23 "dblparse.mly"
                                    ( EOpen(_2,_4) )
# 202 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 24 "dblparse.mly"
                                    ( EOpen(_2,_4) )
# 210 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 25 "dblparse.mly"
                                    ( ECommit(_2, _4) )
# 218 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 26 "dblparse.mly"
                                    ( ECommit(_2, _4) )
# 226 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 27 "dblparse.mly"
                                    ( ECommit(_2, (_2 ^ ".csv")))
# 233 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'table_expr) in
    Obj.repr(
# 28 "dblparse.mly"
                                 ( ELet(_2, _4) )
# 241 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'table_expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 29 "dblparse.mly"
                                 ( EInsert(_2, _4) )
# 249 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'table_expr) in
    Obj.repr(
# 30 "dblparse.mly"
                                 (_1)
# 256 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 31 "dblparse.mly"
                 (_2)
# 263 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : 'seqident) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'table_expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'where) in
    Obj.repr(
# 35 "dblparse.mly"
                                              ( ESelect(_2::_3, _5, _6) )
# 273 "dblparse.ml"
               : 'table_expr))
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
# 285 "dblparse.ml"
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
# 37 "dblparse.mly"
                                                                                                                     (ETable(_3::_4, _7::_8, (_12::_13)::_15))
# 298 "dblparse.ml"
               : 'table_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 6 : 'table_expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'table_expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 38 "dblparse.mly"
                                                             ( EProd(_1, _3, _5, _7) )
# 308 "dblparse.ml"
               : 'table_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'atom) in
    Obj.repr(
# 39 "dblparse.mly"
                                   ( _1 )
# 315 "dblparse.ml"
               : 'table_expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'table_expr) in
    Obj.repr(
# 40 "dblparse.mly"
                       (_2)
# 322 "dblparse.ml"
               : 'table_expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Utils.value) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'seqfilter) in
    Obj.repr(
# 44 "dblparse.mly"
                                    ((_2,_4)::_5)
# 331 "dblparse.ml"
               : 'where))
; (fun __caml_parser_env ->
    Obj.repr(
# 45 "dblparse.mly"
                                    ([])
# 337 "dblparse.ml"
               : 'where))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Utils.value) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'seqfilter) in
    Obj.repr(
# 47 "dblparse.mly"
                                  ((_2,_4)::_5)
# 346 "dblparse.ml"
               : 'seqfilter))
; (fun __caml_parser_env ->
    Obj.repr(
# 48 "dblparse.mly"
                                  ([])
# 352 "dblparse.ml"
               : 'seqfilter))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : Utils.value) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'seqvalue) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'row_vals) in
    Obj.repr(
# 51 "dblparse.mly"
                                      ((_2 :: _3) :: _5)
# 361 "dblparse.ml"
               : 'row_vals))
; (fun __caml_parser_env ->
    Obj.repr(
# 52 "dblparse.mly"
                                      ([])
# 367 "dblparse.ml"
               : 'row_vals))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'seqident) in
    Obj.repr(
# 55 "dblparse.mly"
                  ( _1 :: _2 )
# 375 "dblparse.ml"
               : 'seqident))
; (fun __caml_parser_env ->
    Obj.repr(
# 56 "dblparse.mly"
                  ( [] )
# 381 "dblparse.ml"
               : 'seqident))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 60 "dblparse.mly"
          ( Int _1 )
# 388 "dblparse.ml"
               : Utils.value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 61 "dblparse.mly"
          ( Str _1 )
# 395 "dblparse.ml"
               : Utils.value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Utils.value) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'seqvalue) in
    Obj.repr(
# 64 "dblparse.mly"
                  ( _1 :: _2 )
# 403 "dblparse.ml"
               : 'seqvalue))
; (fun __caml_parser_env ->
    Obj.repr(
# 65 "dblparse.mly"
                  ( [] )
# 409 "dblparse.ml"
               : 'seqvalue))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 69 "dblparse.mly"
                 ( EIdent(_1))
# 416 "dblparse.ml"
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
