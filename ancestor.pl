parent(keyuan,jianbo).
parent(jianbo,di).
parent(di,yuqing).

ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- parent(X,Z), ancestor(Z,Y).