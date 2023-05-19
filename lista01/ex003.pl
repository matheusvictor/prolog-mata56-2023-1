/* Escreva um Programa Prolog que: 
    1.Apresente uma mensagem solicitando o seu nome;
    2.Faça a leitura do seu nome; 
    3.Apresente uma mensagem de boas vindas para o nome informado. 
    
    •Quais foram as ocorrências de erro
*/

% regra:

ler_nome(N) :- 
write('Qual o seu nome?!'), nl,
read(N), 
write('Ola, '),
write(N),
write('!').

% execução:
?- ler_nome(N).

% erros encontrados ao desenvolver o programa:
/*
1. Não familiaridade com a sintaxe da linguagem
2. Escrever a regra
3. Passagem de parâmetro da regra
4. Chamada (execução) da regra
*/