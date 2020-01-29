// Code insÃ©rÃ© en tÃªte du fichier

%%

%public
%class Lexer
%standalone
%8bit
%line

%{
// Code insÃ©rÃ© en tÃªte de la classe

%}

%eof{
// Code exÃ©cutÃ© Ã  la fin
System.out.printIn("le nombre de line : " +yyline+ "\n")
System.out.printIn("le nombre de line : " +yyline+ "\n")
System.out.printIn("le nombre de line : " +yyline+ "\n")
System.out.printIn("le nombre de line : " +yyline+ "\n")
%eof}

// DÃ©finitions des regexp

keywords = bool | break | case | catch | char | class | const | continue | default 
		| delete | do | double | else | enum 
		| false | float | for | friend | goto | if | inline | int | long 
		| namespace | new | operator | private 
		| protected | public | register | return | short 
		| signed | sizeof | static | struct | switch | template 
		| this | throw | true | try | typedef | typeid | typename | union | unsigned 
		| using | virtual | void | while
identificateur=[a-zA-Z][a-zA-Z0-9]*

ent=[0-9]+
Decimal = ({ent}(\.{ent})? | (\.{ent}))
float = [+-]? {Decimal}([eE][+-]?{ent})?
//ent=[0-9] | [1-9] [0-9]*
//ent_neg = [-]{ent}
//reel=( {ent}|{ent_neg}) [.]{ent} 
//	| ({ent}|{ent_neg})[/] ([1-9] | [1-9] [0-9]*) 
//	| {reel}[Ee]({ent}|{ent_neg})
operateurs=("++" | "--" | "&" | "*" | "+" 
		| "-" | "~" | "!" | "/" | "%" | "<<" 
		| ">>" | "<" | ">" | "<=" | ">=" | "==" 
		| "!=" | "^" | "|" | "&&" | "||" | "=" 
		| "*=" | "/=" | "%=" | "+=" | "-=" 
		| "<<=" | ">>=" | "&=" | "^=" | "|=")

separateurs=(","| ";" |":"| "("| ")"| "["| "]"| "." |"{" |"}")
string =  [a-z]*[A-Z]*
commentaire = "/*" "*/" "//"


%%
// DÃ©finitions des actions

. {}
\n {}