<h1 align="center">
  Analisador Léxico
</h1>



Este é um analisador léxico desenvolvido para a disciplina de Compiladores. O objetivo deste analisador é realizar a análise léxica de um programa de entrada, identificando os tokens presentes no código fonte.

## Requisitos
Antes de executar o analisador léxico, certifique-se de ter os seguintes requisitos instalados:

- [MinGW](https://sourceforge.net/projects/mingw/)
- [Flex](https://sourceforge.net/projects/gnuwin32/)

## Como Usar

### Opção 1:
- Clone este repositório para o seu ambiente local
- Navegue até o diretório do projeto pelo terminal:

- Execute o analisador léxico, fornecendo o programa de entrada como argumento:
```
.\analisador.exe
```
Agora digite a string desejada

### Opção 2

- Apenas copiar o arquivo "analisador.l",  e cole-o em uma pasta para abri-lo pelo terminal
- Execute o argumento:
```
flex analisador.l
```
Após isso, será gerado um arquivo em c
- Para executar o arquivo c e renomeá lo use o seguinte argumento:
```
gcc lex.yy.c -o analisador
```
- após isso será gerado um arquivo executável, por fim execute-o 
```
.\analisador.exe
```
E agora insira a String desejada

