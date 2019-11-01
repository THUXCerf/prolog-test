male(di).
male(jianbo).
female(xin).
female(yuan).
female(yuqing).
father(di,yuqing).
father(jianbo,di).
mother(yuan,yuqing).
mother(xin,di).

grandfather(X,Y) :- father(X,Z),father(Z,Y).
grandmother(X,Y) :- mother(X,Z),father(Z,Y).
daughter(X,Y) :- father(X,Y), female(Y).