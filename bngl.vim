" Color Schema for BioNetGen Lanuage script.

let b:current_syntax = "bngl"

syntax region bnglLineComment start=+#+ end=+$+
highlight link bnglLineComment Comment


syntax region bnglDeclSection start=+begin+ end=+$+
syntax region bnglDeclSection start=+end+ end=+$+
highlight link bnglDeclSection Define

"syntax match bnglNumber +\<[0123456789]*\>+
"syntax match bnglNumber +\<[0123456789]*.[0123456789]*\>+
"highlight link bnglNumber Number

syntax keyword bnglKeyWord include_reactants include_products exclude_reactants exclude_products
"syntax match bnglOperator "->" "<>" "!" "~" "+"
syntax match bnglOperator /\(->\|<>\|+\)/	
syntax match bnglModificationOperator /\(\~\|!\)/
"\|<>\|!\|~\|+\)/
highlight link bnglKeyWord KeyWord 
highlight link bnglOperator KeyWord 
highlight link bnglModificationOperator KeyWord

