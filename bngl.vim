" Color Schema for BioNetGen Lanuage script.

let b:current_syntax = "bngl"

syntax region bnglLineComment start=+#+ end=+$+
highlight link bnglLineComment Comment

" Section Declarations
syntax match bnglDeclKeyword /\(begin\s\+\|end\s\+\)/ nextgroup=bnglSectName
highlight link bnglDeclKeyword Define
syntax match bnglSectName /\(model\|parameters\|observables\|seed\s\+speecies\|molecule\s\+types\|seed\s\+species\|reaction\s\+rules\)/ contained
highlight link bnglSectName Define
"syntax region bnglDeclSection start=+begin+ end=+$+
"syntax region bnglDeclSection start=+end+ end=+$+
"syntax match bnglDeclSection 
"highlight link bnglDeclSection Define

"syntax match bnglNumber +\<[0123456789]*\>+
"syntax match bnglNumber +\<[0123456789]*.[0123456789]*\>+
"highlight link bnglNumber Number

syntax keyword bnglKeyWord include_reactants include_products exclude_reactants exclude_products
syntax match bnglOperator /\(->\|<>\|+\)/
syntax match bnglModificationOperator /\(\~\)/ nextgroup=bnglModification
syntax match bnglModification /\(\w\)/ contained
syntax match bnglBindingOperator /\(!\)/ nextgroup=bnglBinding
syntax match bnglBinding /\(\w\)/ contained
highlight link bnglKeyWord KeyWord 
highlight link bnglOperator KeyWord 
highlight link bnglModificationOperator KeyWord
highlight link bnglModification String
highlight link bnglBindinfOperator KeyWord
highlight link bnglBinding String

