%{
#include <stdio.h>
%}


%%

"//".* { printf("COMMENT"); }
"f" { printf("floatdcl "); }
"i" { printf("intdcl "); }
"p" { printf("print "); }
"=" { printf(" assign ");}
"+" { printf(" plus ");}
"-" { printf(" minus ");}
[a-zA-Z_-]+ { printf("id "); } /* Permite guiones medios y bajos*/
[0-9]+ { printf("inum ");}
[0-9]+"."[0-9]+ { printf("fnum ");}

[ \t]+              

%%

int main() {
    yylex();
    return 0;
}
