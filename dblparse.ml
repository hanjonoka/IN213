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

open Parsing;;
let _ = parse_error;;
# 2 "dblparse.mly"
open Dblast ;;
# 30 "dblparse.ml"
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
    0|]

let yytransl_block = [|
  257 (* IDENT *);
  258 (* INT *);
  259 (* STRING *);
    0|]

let yylhs = "\255\255\
\001\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\004\000\004\000\004\000\004\000\004\000\006\000\
\006\000\010\000\010\000\008\000\008\000\005\000\005\000\002\000\
\002\000\007\000\007\000\009\000\000\000"

let yylen = "\002\000\
\002\000\004\000\004\000\004\000\004\000\002\000\004\000\004\000\
\001\000\003\000\006\000\014\000\017\000\001\000\003\000\005\000\
\000\000\005\000\000\000\005\000\000\000\002\000\000\000\001\000\
\001\000\002\000\000\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\028\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\029\000\000\000\009\000\014\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\001\000\010\000\015\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\003\000\002\000\005\000\
\004\000\022\000\000\000\007\000\008\000\000\000\000\000\000\000\
\000\000\011\000\000\000\000\000\000\000\000\000\000\000\024\000\
\025\000\000\000\000\000\000\000\016\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\026\000\000\000\000\000\
\000\000\012\000\018\000\000\000\000\000\000\000\000\000\000\000\
\013\000\000\000\020\000"

let yydgoto = "\002\000\
\011\000\066\000\012\000\013\000\033\000\050\000\067\000\077\000\
\014\000\061\000"

let yysindex = "\001\000\
\015\255\000\000\000\000\015\255\255\254\012\255\025\255\028\255\
\043\255\006\255\000\000\027\255\000\000\000\000\041\255\046\255\
\053\255\042\255\045\255\040\255\056\255\054\255\006\255\047\255\
\000\000\000\000\000\000\056\255\059\255\060\255\017\255\056\255\
\048\255\006\255\046\255\061\255\052\255\000\000\000\000\000\000\
\000\000\000\000\063\255\000\000\000\000\058\255\049\255\065\255\
\068\255\000\000\056\255\067\255\062\255\044\255\064\255\000\000\
\000\000\050\255\039\255\074\255\000\000\044\255\044\255\072\255\
\044\255\044\255\066\255\044\255\069\255\000\000\070\255\050\255\
\071\255\000\000\000\000\044\255\073\255\044\255\076\255\075\255\
\000\000\071\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\038\255\077\255\000\000\000\000\000\000\
\000\000\000\000\000\000\078\255\000\000\000\000\000\000\249\254\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\030\255\000\000\
\000\000\000\000\078\255\000\000\000\000\000\000\000\000\000\000\
\000\000\031\255\000\000\000\000\000\000\000\000\079\255\000\000\
\079\255\079\255\000\000\000\000\000\000\000\000\000\000\031\255\
\080\255\000\000\000\000\000\000\000\000\079\255\000\000\000\000\
\000\000\080\255\000\000"

let yygindex = "\000\000\
\000\000\205\255\074\000\252\255\229\255\000\000\230\255\005\000\
\000\000\010\000"

let yytablesize = 94
let yytable = "\016\000\
\037\000\001\000\058\000\023\000\042\000\024\000\003\000\063\000\
\017\000\023\000\065\000\023\000\018\000\005\000\019\000\003\000\
\072\000\040\000\035\000\041\000\004\000\008\000\005\000\053\000\
\078\000\020\000\006\000\007\000\021\000\044\000\008\000\025\000\
\009\000\010\000\017\000\019\000\017\000\019\000\069\000\070\000\
\056\000\057\000\006\000\022\000\006\000\056\000\057\000\026\000\
\062\000\017\000\019\000\080\000\027\000\028\000\031\000\029\000\
\032\000\034\000\030\000\038\000\039\000\045\000\046\000\047\000\
\043\000\051\000\036\000\048\000\052\000\049\000\054\000\060\000\
\055\000\059\000\064\000\068\000\071\000\015\000\074\000\073\000\
\076\000\075\000\000\000\079\000\081\000\082\000\083\000\000\000\
\023\000\027\000\021\000\000\000\000\000\023\000"

let yycheck = "\004\000\
\028\000\001\000\054\000\011\001\032\000\010\000\001\001\059\000\
\010\001\017\001\062\000\006\001\001\001\008\001\003\001\001\001\
\068\000\001\001\023\000\003\001\006\001\016\001\008\001\051\000\
\076\000\001\001\012\001\013\001\001\001\034\000\016\001\005\001\
\018\001\019\001\005\001\005\001\007\001\007\001\065\000\066\000\
\002\001\003\001\005\001\001\001\007\001\002\001\003\001\007\001\
\010\001\020\001\020\001\078\000\007\001\001\001\015\001\014\001\
\001\001\004\001\014\001\001\001\001\001\001\001\011\001\001\001\
\017\001\001\001\020\001\010\001\001\001\021\001\004\001\022\001\
\011\001\010\001\001\001\004\001\011\001\004\000\009\001\011\001\
\010\001\072\000\255\255\011\001\009\001\011\001\082\000\255\255\
\011\001\011\001\011\001\255\255\255\255\017\001"

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
# 182 "dblparse.ml"
               : Dblast.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 23 "dblparse.mly"
                                    ( EOpen(_2,_4) )
# 190 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 24 "dblparse.mly"
                                    ( EOpen(_2,_4) )
# 198 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 25 "dblparse.mly"
                                    ( ECommit(_2, _4) )
# 206 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 26 "dblparse.mly"
                                    ( ECommit(_2, _4) )
# 214 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 27 "dblparse.mly"
                                    ( ECommit(_2, (_2 ^ ".csv")))
# 221 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'not_void_expr) in
    Obj.repr(
# 28 "dblparse.mly"
                                    ( ELet(_2, _4) )
# 229 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'not_void_expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 29 "dblparse.mly"
                                    ( EInsert(_2, _4) )
# 237 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'not_void_expr) in
    Obj.repr(
# 30 "dblparse.mly"
                                    (_1)
# 244 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 31 "dblparse.mly"
                 (_2)
# 251 "dblparse.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : 'seqident) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'where) in
    Obj.repr(
# 35 "dblparse.mly"
                                         ( ESelect(_2::_3, _5, _6) )
# 261 "dblparse.ml"
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
# 273 "dblparse.ml"
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
# 286 "dblparse.ml"
               : 'not_void_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'atom) in
    Obj.repr(
# 38 "dblparse.mly"
                                   ( _1 )
# 293 "dblparse.ml"
               : 'not_void_expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'not_void_expr) in
    Obj.repr(
# 39 "dblparse.mly"
                          (_2)
# 300 "dblparse.ml"
               : 'not_void_expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Utils.value) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'seqfilter) in
    Obj.repr(
# 43 "dblparse.mly"
                                    ((_2,_4)::_5)
# 309 "dblparse.ml"
               : 'where))
; (fun __caml_parser_env ->
    Obj.repr(
# 44 "dblparse.mly"
                                    ([])
# 315 "dblparse.ml"
               : 'where))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Utils.value) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'seqfilter) in
    Obj.repr(
# 46 "dblparse.mly"
                                  ((_2,_4)::_5)
# 324 "dblparse.ml"
               : 'seqfilter))
; (fun __caml_parser_env ->
    Obj.repr(
# 47 "dblparse.mly"
                                  ([])
# 330 "dblparse.ml"
               : 'seqfilter))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : Utils.value) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'seqvalue) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'row_vals) in
    Obj.repr(
# 50 "dblparse.mly"
                                      ((_2 :: _3) :: _5)
# 339 "dblparse.ml"
               : 'row_vals))
; (fun __caml_parser_env ->
    Obj.repr(
# 51 "dblparse.mly"
                                      ([])
# 345 "dblparse.ml"
               : 'row_vals))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'seqident) in
    Obj.repr(
# 54 "dblparse.mly"
                  ( _1 :: _2 )
# 353 "dblparse.ml"
               : 'seqident))
; (fun __caml_parser_env ->
    Obj.repr(
# 55 "dblparse.mly"
                  ( [] )
# 359 "dblparse.ml"
               : 'seqident))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 59 "dblparse.mly"
          ( Int _1 )
# 366 "dblparse.ml"
               : Utils.value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 60 "dblparse.mly"
          ( Str _1 )
# 373 "dblparse.ml"
               : Utils.value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Utils.value) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'seqvalue) in
    Obj.repr(
# 63 "dblparse.mly"
                  ( _1 :: _2 )
# 381 "dblparse.ml"
               : 'seqvalue))
; (fun __caml_parser_env ->
    Obj.repr(
# 64 "dblparse.mly"
                  ( [] )
# 387 "dblparse.ml"
               : 'seqvalue))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 68 "dblparse.mly"
                 ( EIdent(_1))
# 394 "dblparse.ml"
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
