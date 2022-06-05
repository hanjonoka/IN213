%{
open Dblast ;;
%}

%token <string> IDENT
%token <int> INT
%token <string> STRING
%token EQUAL LT LEQ GT GEQ NEQ
%token <string> FILTRE_OP
%token SEMI LPAR RPAR LCURL RCURL LBRAC RBRAC
%token OPEN COMMIT AS TO SELECT FROM LET INSERT INTO WHERE PROD

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
| LET IDENT EQUAL table_expr     { ELet($2, $4) }
| INSERT table_expr INTO IDENT   { EInsert($2, $4) }
| table_expr                     {$1}
| LPAR expr RPAR {$2}
;

table_expr :
| SELECT IDENT seqident FROM table_expr where { ESelect($2::$3, $5, $6) }
| LCURL LBRAC IDENT seqident RBRAC LBRAC IDENT seqident RBRAC LBRAC value seqvalue RBRAC RCURL                       {ETable($3::$4, $7::$8, [$11::$12])}
| LCURL LBRAC IDENT seqident RBRAC LBRAC IDENT seqident RBRAC LBRAC LBRAC value seqvalue RBRAC row_vals RBRAC RCURL  {ETable($3::$4, $7::$8, ($12::$13)::$15)}
| table_expr AS IDENT PROD table_expr AS IDENT               { EProd($1, $3, $5, $7) }
| atom                             { $1 }
| LPAR table_expr RPAR {$2}
;

where :
| WHERE filter_expr {$2}
|                   {ECond(Filtre_val (Int 1), "=", Filtre_val (Int 1))}

filter_expr :
| LPAR filter_expr RPAR             { $2 }
| filter_expr FILTRE_OP filter_expr { EFiltre($1,$2,$3) }
| filter_obj op filter_obj          { ECond($1,$2,$3) }

filter_obj :
| IDENT {Filtre_col ($1)} //nom de colonne
| value {Filtre_val ($1)}

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

op :
| EQUAL {"="}
| LT    {"<"}
| LEQ   {"<="}
| GT    {">"}
| GEQ   {">="}
| NEQ   {"!="}