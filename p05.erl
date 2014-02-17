%%%-------------------------------------------------------------------
%%% @author prots
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. Feb 2014 12:06 PM
%%%-------------------------------------------------------------------
-module(p05).
-author("prots").

%% API
-export([reverse/1]).

reverse([]) ->
    [];
reverse(Input) ->
    loop(Input, []).

loop([H|T], List) ->
    loop(T, [H|List]);
loop([], Acc) ->
    Acc.
