%%%-------------------------------------------------------------------
%%% @author prots
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. Feb 2014 11:07 AM
%%%-------------------------------------------------------------------
-module(p01).
-author("prots").

%% API
-export([last/1]).

last([]) ->
    empty_list;
last([H|T]) ->
   loop(T, H).

loop([], Res) ->
    Res;
loop([H|T], _Res) ->
    loop(T, H).


