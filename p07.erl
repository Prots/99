%%%-------------------------------------------------------------------
%%% @author prots
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. Feb 2014 3:09 PM
%%%-------------------------------------------------------------------
-module(p07).
-author("prots").

%% API
-export([flatten/1]).

flatten([]) ->
    [];
flatten(List) ->
    p05:reverse(flatten(List, [])).

flatten([], Res) ->
    Res;
flatten([H|T], Acc) when is_list(H) ->
    Acc1 = flatten(H, Acc),
    flatten(T, Acc1);
flatten([H|T], Acc) ->
    flatten(T, [H|Acc]).