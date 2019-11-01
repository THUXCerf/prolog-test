fibonacci(1,1).
fibonacci(2,1).
fibonacci(N,V) :- N>2, N1 is N-1, N2 is N-2, fibonacci(N1,V1), fibonacci(N2,V2), V is V1+V2.