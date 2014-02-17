%%%-------------------------------------------------------------------
%%% @author prots
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. Feb 2014 12:00 PM
%%%-------------------------------------------------------------------
-module(p03).
-author("prots").

%% API
-export([element_at/2]).

element_at(L, Pos) ->
    loop(L, 1, Pos).

loop([], _Acc, _Pos)  ->
    undefined;
loop([H|_T] , Acc, Pos) when Acc =:= Pos ->
    H;
loop(_L , Acc, Pos) when Pos < Acc ->
    undefined;
loop([_H|T] , Acc, Pos) when Pos > Acc ->
    loop(T, Acc + 1, Pos).


