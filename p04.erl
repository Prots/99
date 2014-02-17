%%%-------------------------------------------------------------------
%%% @author prots
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. Feb 2014 11:54 AM
%%%-------------------------------------------------------------------
-module(p04).
-author("prots").

%% API
-export([len/1]).

len([]) -> 0;
len([_H|T]) ->
    loop(T, 1).

loop([], Acc) ->
    Acc;
loop([_H|T], Acc) ->
    loop(T, Acc + 1).


