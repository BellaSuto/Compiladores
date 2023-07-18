%{
#include<stdio.h>
%}

%option noyywrap

DIGITO [0-9]+
LETRA [a-zA-Z]
ID [a-zA-Z][a-zA-Z0-9]*
ESPACOBRANCO [ ]
ABERTURA [(]
FECHAMENTO [)]
COMENTARIO_I "\/\*"
COMENTARIO_F "\*\/"

%%

IF|ELSE|if|else {printf("[%s] -> CONDICIONAL\n", yytext);}
for|while {printf("[%s] -> REPETICAO\n", yytext);}
int|float|double {printf("[%s] -> TIPO DA VARIAVEL\n", yytext);}
main {printf("[%s] -> FUNCAO PRINCIPAL\n", yytext);}
#include {printf("[%s] -> FUNCAO DE ENTRADA DA BIBLIOTECA\n", yytext);}
printf {printf("[%s] -> FUNCAO DE SAIDA\n", yytext);}
return {printf("[%s] -> FUNCAO DE RETORNO\n", yytext);}
stdio.h {printf("[%s] -> BIBLIOTECA\n", yytext);}

"+" {printf("[%s] -> OPERADOR SOMA\n", yytext);}
"-" {printf("[%s] -> OPERADOR SUBTRACAO\n", yytext);}
"*" {printf("[%s] -> OPERADOR MULTIPLICACAO\n", yytext);}
"/" {printf("[%s] -> OPERADOR DIVISAO\n", yytext);}
"==" {printf("[%s] -> OPERADOR IGUALDADE\n", yytext);}
"++" {printf("[%s] -> OPERADOR INCREMENTO\n", yytext);}
">" {printf("[%s] -> OPERADOR MAIOR QUE\n", yytext);}
"<" {printf("[%s] -> OPERADOR MENOR QUE\n", yytext);}
">=" {printf("[%s] -> OPERADOR MAIOR OU IGUAL A QUE\n", yytext);}
"<=" {printf("[%s] -> OPERADOR MENOR OU IGUAL A QUE\n", yytext);}
"!=" {printf("[%s] -> OPERADOR DIFERENCA\n", yytext);}
"^" {printf("[%s] -> OU EXCLUSIVO\n", yytext);}
"||" {printf("[%s] -> OU LOGICO\n", yytext);}
"=" {printf("[%s] -> SIMBOLO ATRIBUICAO\n", yytext);}
"{" {printf("[%s] -> ABERTURA DE CHAVES\n", yytext);}
"}" {printf("[%s] -> FECHAMENTO DE CHAVES\n", yytext);}
"." {printf("[%s] -> PONTO\n", yytext);}
";" {printf("[%s] -> PONTO E VIRGULA\n", yytext);}
"," {printf("[%s] -> VIRGULA\n", yytext);}

{ABERTURA} {printf("[%s] -> ABERTURA DE PARENTESES\n", yytext);}
{FECHAMENTO} {printf("[%s] -> FECHAMENTO DE PARENTESE\n", yytext);}
{COMENTARIO_I}([^*]|[\r\n]|(\*+([^*/]|[\r\n])))*\*+{COMENTARIO_F} {printf("[%s] -> COMENTARIO\n", yytext);}
{DIGITO}+ {printf("[%s] -> NUMERO\n", yytext);}
{ID} {printf("[%s] -> IDENTIFICADOR\n", yytext);}
{ESPACOBRANCO} {printf("[%s] -> ESPACO EM BRANCO\n", yytext);}

[[:^space:]]+;

%%

int main() {
    yylex();
    return 0;
}