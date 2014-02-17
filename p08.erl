%%%-------------------------------------------------------------------
%%% @author prots
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. Feb 2014 3:14 PM
%%%-------------------------------------------------------------------
-module(p08).
-author("prots").

%% API
-export([compress/1]).

compress([]) ->
    [];
compress(List) ->
    compress(List, []).

%% compress([], Acc) ->
%%     p05:reverse(Acc);
compress([H|[]], Acc) ->
    p05:reverse([H|Acc]);
compress([H|[H_new|T]], Acc) when H=/=H_new ->
    compress([H_new|T], [H|Acc]);
compress([H|[H_new|T]], Acc) when H=:=H_new ->
    compress([H_new|T], Acc).
