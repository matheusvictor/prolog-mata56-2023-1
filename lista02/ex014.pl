regiao(ac,norte).
regiao(al,nordeste).
regiao(ap,norte).
regiao(am,norte).
regiao(ba,nordeste).
regiao(ce,nordeste).
regiao(df,centro-oeste).
regiao(es,sudeste).
regiao(go,centro-oeste).
regiao(ma,nordeste).
regiao(mt,centro-oeste).
regiao(ms,centro-oeste).
regiao(mg,sudeste).
regiao(pa,norte).
regiao(pb,nordeste).
regiao(pr,sul).
regiao(pe,nordeste).
regiao(pi,nordeste).
regiao(rj,sudeste).
regiao(rn,nordeste).
regiao(rs,sul).
regiao(ro,norte).
regiao(rr,norte).
regiao(sc,sul).
regiao(sp,sudeste).
regiao(se,nordeste).
regiao(to,norte).

capital("rio branco",ac).
capital(maceio,al).
capital(macapa,ap).
capital(manaus,am).
capital(salvador,ba).
capital(fortaleza,ce).
capital(brasilia,df).
capital(vitoria,es).
capital(goiania,go).
capital("sao luis",ma).
capital(cuiaba,mt).
capital("campo grande",ms).
capital("belo horizonte",mg).
capital(belem,pa).
capital("joao pessoa",pb).
capital(curitiba,pr).
capital(recife,pe).
capital(teresina,pi).
capital("rio de janeiro",rj).
capital(natal,rn).
capital("porto alegre",rs).
capital("porto velho",ro).
capital("boa vista",rr).
capital(florianopolis,sc).
capital("sao paulo",sp).
capital(aracaju,se).
capital(palmas,to).

start :-
    write('Digite o nome da regiao: '),
    read(Regiao),
    listar_capitais_regiao(Regiao).

listar_capitais_regiao(Regiao) :-
    bagof(Capital, Estado^(regiao(Estado, Regiao), capital(Capital, Estado)), Capitais),
    imprimir_capitais(Capitais).

imprimir_capitais([]) :-
    write('...').
imprimir_capitais([Capital|Resto]) :-
    write(Capital), nl,
    imprimir_capitais(Resto).

%chamar start(sul|norte|nordeste|centro-oeste|sudeste)