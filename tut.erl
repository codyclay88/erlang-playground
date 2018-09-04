% start REPL by typing in "erl" into terminal
% compile this module by typing c(tut).

-module(tut).
-export([double/1, fac/1, mult/2, convert_length/1, list_length/1]).

list_length([]) -> 
    0;

list_length([_ | Rest]) -> 
    1 + list_length(Rest).

convert_length({inch, M}) -> 
    {centimeter, M / 2.54};

convert_length({centimeter, M}) -> 
    {inch, M * 2.54}.

fac(1) -> 
    1;

fac(N) ->
    N * fac(N - 1).

mult(X, Y) -> 
    X * Y.

double(X) -> 
    2 * X.