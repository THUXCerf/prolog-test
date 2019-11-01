

investment([X,S,E,Q,Y],savings):-savings_account_inadequate([X,S,E,Y]).
investment([X,S,E,Q,Y],stocks):-savings_account_adequate([X,S,E,Y]),income_adequate([X,S,E,Q,Y]).
investment([X,S,E,Q,Y],combination):-savings_account_adequate([X,S,E,Y]),income_inadequate([X,S,E,Q,Y]).

savings_account_adequate([X,S,E,Y]):-greater(S,5000*Y).
savings_account_inadequate([X,S,E,Y]):-not(greater(S,5000*Y)).

income_adequate([X,S,E,Q,Y]):-greater(E,15000+4000*Y),Q == 'steady'.
income_inadequate([X,S,E,Q,Y]):-not(greater(E,15000+4000*Y)),Q == 'steady'.
income_inadequate([X,S,E,Q,Y]):- Q == 'unsteady'.

greater(X,Y):- X>=Y.


