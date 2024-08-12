%option noyywrap yylineno
%{

// noyywrap    - no need to deal with multiple input files
// yylineno    - variable to track line numbers 
//               that copies otherwise unmatched input to yyout.

#include "token.h"

%}

%%

\/\/.*\n {} 
[0-9]+ {return NUM;}
"boolean" {return BOOLEAN;}
"char" {return CHAR_KEY;}
"else" {return ELSE;}
"false" {return FALSE;}
"for" {return FOR;}
"function" {return FUNCTION;}
"if" {return IF;}
"integer" {return INTEGER;}
"print" {return PRINT;}
"string" {return STRING;}
"true" {return TRUE;}
"void" {return VOID;}
"while" {return WHILE;}
"<=" {return LESS_THAN_OR_EQUAL;}
">=" {return GREATER_THAN_OR_EQUAL;}
"&&" {return AND;}
"!=" {return NOT_EQUALS;}
"==" {return EQQ;}
"||" {return OR;}
"+" {return ADD;}
"-" {return MINUS;}
"/" {return DIV;}
"*" {return PLUS;}
"%" {return PERCENT;}
"!" {return EXCLAMATION;}
"<" {return LESS_THAN;}
">" {return GREATER_THAN;}
"=" {return EQUALS;}
":" {return COLON;}
";" {return SEMICOLON;}
"," {return COMMA;}
"(" {return OPEN_PAREN;}
")" {return CLOSE_PAREN;}
"[" {return OPEN_BRACKET;}
"]" {return CLOSE_BRACKET;}
"{" {return OPEN_BRACE;}
"}" {return CLOSE_BRACE;}
"\\" {return BACKSLASH;}

[a-zA-Z][a-zA-Z0-9]{0,255} {return ID; }
[a-zA-Z][a-zA-Z0-9]{0,255}[a-zA-Z0-9]+ {return ERROR; }
[\"]([^\\"\n]|\\n|\\0)*[\"] {return STR;}  
[\'].+[\'] {return CHAR;} 
[ \t\n\r]   {}
. 				{ return ERROR; }

%%


