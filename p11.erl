%%%-------------------------------------------------------------------
%%% @author prots
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 17. Feb 2014 3:38 PM
%%%-------------------------------------------------------------------
-module(p11).
-author("prots").

%% API
-export([encodemod/1]).

encodemod(List) ->
    Packed = p09:pack(List),
    [list2tuple(X) || X <- Packed].

list2tuple([]) ->
    [];
list2tuple(List) ->
    list2tuple(List, 1).

list2tuple([H|[]], Acc) when Acc > 1 ->
    {H, Acc};
list2tuple([H|[]], Acc) when Acc =:= 1 ->
    H;
list2tuple([_H|T], Acc) ->
    list2tuple(T, Acc + 1).
