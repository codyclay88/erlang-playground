% start REPL by typing in "erl" into terminal
% compile this module by typing c(temps).

-module(list_helpers).
-export([list_max/1, print_all/1, filter/2, is_even/1]).

filter(_P,[]) -> [];

filter(P,[X|Xs]) ->
    case P(X) of
        true -> 
            [X|filter(P,Xs)];
        _ -> 
            filter(P,Xs)
    end.

is_even(X) -> 
    X rem 2 == 0.

print_all([]) -> 
    io:format("~n");

print_all([X|Xs]) -> 
    io:format("~p\t", [X]),
    print_all(Xs).

list_max([Head|Rest]) ->
    list_max(Rest, Head).

list_max([], Res) -> 
    Res;

list_max([Head | Rest], Result_so_far) when Head > Result_so_far ->
    list_max(Rest, Head);

list_max([_Head | Rest], Result_so_far) ->
    list_max(Rest, Result_so_far).