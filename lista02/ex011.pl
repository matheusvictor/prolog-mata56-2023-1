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
    localizado_em_recursao(Local, Regiao),
    nasceu_em(Pessoa, Local).
