%{
open Dblast ;;


%}

%token <string> IDENT
%token <string> STRING
%token SEMI
%token OPEN COMMIT AS TO

%start main
%type <Dblast.expr> main

%%

main: expr SEMI {$1}
;

/* Grammaire */
expr :
  OPEN STRING AS IDENT          { EOpen($2,$4) }
| OPEN IDENT AS IDENT           { EOpen($2,$4) } //same but without quotes
| COMMIT IDENT TO STRING        { ECommit($2, $4) }
| COMMIT IDENT TO IDENT         { ECommit($2, $4) } //same but without quotes
| atom                          { $1 }
;

seqident:
  IDENT seqident  { $1 :: $2 }
| /* rien */      { [] }
;

atom:
  IDENT     { EIdent($1)}
;