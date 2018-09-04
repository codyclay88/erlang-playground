% start REPL by typing in "erl" into terminal
% compile this module by typing c(temps).

-module(list_helpers).
-export([list_max/1]).

list_max([Head|Rest]) ->
    list_max(Rest, Head).

list_max([], Res) -> 
    Res;

list_max([Head | Rest], Result_so_far) when Head > Result_so_far ->
    list_max(Rest, Head);

list_max([_Head | Rest], Result_so_far) ->
    list_max(Rest, Result_so_far).