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
localizado_em_recursao(X, Y) :-
    localizado_em(X, Y).

localizado_em_recursao(X, Y) :-
    localizado_em(X, Z),
    localizado_em_recursao(Z, Y).

nasceu_em_recursao(P, R) :-
    localizado_em_recursao(O, R),
    nasceu_em(P, O).