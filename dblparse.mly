%{
open Dblast ;;
%}

%token <string> IDENT
%token <string> STRING
%token EQUAL
%token SEMI LPAR RPAR
%token OPEN COMMIT AS TO SELECT FROM LET

%start main
%type <Dblast.expr> main

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
| not_void_expr                     {$1}
;

not_void_expr :
| SELECT IDENT seqident FROM IDENT  { ESelect($2::$3, $5) }
| atom                          { $1 }
;

seqident:
  IDENT seqident  { $1 :: $2 }
| /* rien */      { [] }
;

atom:
  IDENT          { EIdent($1)}
| LPAR expr RPAR {$2}
;