%fatos
masculino(bob).
masculino(tom).
masculino(jim).

fem(pam).
fem(ann).
fem(pat).
fem(liz).

mae(pam, bob).
mae(pat, jim).

pai(tom, bob).
pai(tom, liz).
pai(bob, ann).
pai(bob, pat).

avo(pam, ann).
avo(pam, pat).
avo(tom, ann).
avo(tom, pat).
avo(bob, jim).

neto(jim, bob).
neto(ann, pam).
neto(pat, pam).
neto(ann, tom).
neto(pat, tom).

%regras
irmao(X,Y) :- pai(P,X), pai(P,Y), X\==Y.
avo(T,A) :- (pai(T,B); mae(T,B)), pai(B,A). % verifica se é avô ou avó
tio(B,J) :- (pai(B,P); mae(B,P)), (pai(P,J); mae(P,J)).

%consultas_realizadas:
# ?- irmao(bob, ann). % false
# ?- irmao(bob, liz). % true
# ?- avo(tom, ann). % true
# ?- avo(tom, pat). % true
# ?- avo(pam, pat). % true
# ?- avo(pam, ann). % true
# ?- tio(bob,jim). % true