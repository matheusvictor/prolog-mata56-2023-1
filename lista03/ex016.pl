%fatos
localizado_em(salvador, bahia).
localizado_em(bahia, brasil).
localizado_em(brasil, america).
localizado_em(maceio, brasil).
localizado_em(roma, italia).

nasceu_em(joao, salvador).
nasceu_em(maria, maceio).
nasceu_em(giuseppe, roma).

%regras
localizado_em_recursao(Local, Regiao) :-
    localizado_em(Local, Regiao).

localizado_em_recursao(Local, Regiao) :-
    localizado_em(Local, Zona),
    localizado_em_recursao(Zona, Regiao).
    
nasceu_em_recursao(Pessoa, Regiao) :-
    nasceu_em(Pessoa, Regiao).
    
nasceu_em_recursao(Pessoa, Regiao) :-
    localizado_em_recursao(Local, Regiao),
    nasceu_em(Pessoa, Local).

% regra para percorrer uma lista e apresentar os elementos em linhas separadas
percorrer_lista([]).
percorrer_lista([Elemento | Resto]) :-
    writeln(Elemento),
    percorrer_lista(Resto).

% função para listar locais localizados em uma determinada região
listar_localizado_em(Regiao) :-
    findall(Local, localizado_em_recursao(Local, Regiao), Locais),
    percorrer_lista(Locais).

% função para listar pessoas que nasceram em uma determinada região
listar_nasceu_em(Regiao) :-
    findall(Pessoa, nasceu_em_recursao(Pessoa, Regiao), Pessoas),
    percorrer_lista(Pessoas).
