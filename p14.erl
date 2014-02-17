%%%-------------------------------------------------------------------
%%% @author prots
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. Feb 2014 4:56 PM
%%%-------------------------------------------------------------------
-module(p14).
-author("prots").

%% API
-export([duplicate/1]).

duplicate([]) ->
    [];
duplicate(List) ->
    duplicate(List, []).

duplicate([], Acc) ->
    p05:reverse(Acc);
duplicate([H|T], Acc) ->
    duplicate(T, [H|[H|Acc]]).
