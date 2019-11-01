travel(e,w).
travel(w,e).

move([X,X,Goat,Cabbage],fox,[Y,Y,Goat,Cabbage]) :- travel(X,Y).
move([X,Fox,X,Cabbage],goat,[Y,Fox,Y,Cabbage]) :- travel(X,Y).
move([X,Fox,Goat,X],cabbage,[Y,Fox,Goat,Y]) :- travel(X,Y).
move([X,Fox,Goat,Cabbage],nothing,[Y,Fox,Goat,Cabbage]) :- travel(X,Y).

safe([X,_,X,_]).
safe([X,X,_,X]).

solve([w,w,w,w],[]).
solve(State,[FirstStep|Others]) :- move(State, FirstStep, NextState), safe(NextState), solve(NextState, Others).