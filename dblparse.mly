%{
open Dblast ;;
open Utils;;
%}

%token <string> IDENT
%token <int> INT
%token <string> STRING
%token EQUAL
%token SEMI LPAR RPAR LCURL RCURL LBRAC RBRAC
%token OPEN COMMIT AS TO SELECT FROM LET INSERT INTO

%start main
%type <Dblast.expr> main
%type <Utils.value> value

%%

main: expr SEMI {$1}
;

/* Grammaire */
expr :
  OPEN STRING AS IDENT              { EOpen($2,$4) }
| OPEN IDENT AS IDENT               { EOpen($2,$4) } //same but without quotes
| COMMIT IDENT TO STRING            { ECommit($2, $4) }
| COMMIT IDENT TO IDENT             { ECommit($2, $4) } //same but without quotes
| COMMIT IDENT                      { ECommit($2, ($2 ^ ".csv"))} //same but with default file name
| LET IDENT EQUAL not_void_expr     { ELet($2, $4) }
| INSERT not_void_expr INTO IDENT   { EInsert($2, $4) }
| not_void_expr                     {$1}
| LPAR expr RPAR {$2}
;

not_void_expr :
| SELECT IDENT seqident FROM IDENT { ESelect($2::$3, $5) }
| LCURL LBRAC IDENT seqident RBRAC LBRAC value seqvalue RBRAC RCURL                       {ETable($3::$4, [$7::$8])}
| LCURL LBRAC IDENT seqident RBRAC LBRAC LBRAC value seqvalue RBRAC row_vals RBRAC RCURL  {ETable($3::$4, ($8::$9)::$11)}
| atom                             { $1 }
| LPAR not_void_expr RPAR {$2}
;

row_vals :
  LBRAC value seqvalue RBRAC row_vals {($2 :: $3) :: $5}
|                                     {[]}

seqident:
  IDENT seqident  { $1 :: $2 }
| /* rien */      { [] }
;

value:
  INT     { Int $1 }
| STRING  { Str $1 }

seqvalue:
  value seqvalue  { $1 :: $2 }
|                 { [] }
;

atom:
  IDENT          { EIdent($1)}
;