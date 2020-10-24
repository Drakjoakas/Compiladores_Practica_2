/*
Sandoval Miramontes Joaquín
418049060
*/
import java.lang.*;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;

%%

%line
%column
%unicode
%type Object

%{
public static void main(String args[]) {
  Yylex lexer = new Yylex (new BufferedReader (new InputStreamReader (System.in)));
  try {
    lexer.yylex();
  } catch (IOException e) {
    System.out.println("Ocurrió un error al intentar acceder a la consola");
  }
}
%}

digito=[0-9]
letra=[a-zA-Z]
espacio=[ \t\n]
esps={espacio}+

%%

{esps} {/*Ignora los espacios en blanco*/}
digito+ {System.out.println("Encontre un numero: " + yytext());}
{letra}+ {System.out.println("Encontre una palabra: " + yytext());}
