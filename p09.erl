%%%-------------------------------------------------------------------
%%% @author prots
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. Feb 2014 3:40 PM
%%%-------------------------------------------------------------------
-module(p09).
-author("prots").

%% API
-export([pack/1]).

pack([]) ->
    [];
pack(List) ->
    get_next(List, [], []).

get_next([], _Acc, Acc_all) ->
    p05:reverse(Acc_all);
get_next([H|[]], _Acc, _Acc_all) ->
    [[H]];
get_next([H|[H_new|[]]], Acc, Acc_all) when H =/= H_new->
    p05:reverse([[H_new]|[[H|Acc]|Acc_all]]);
get_next([H|[H_new|[]]], Acc, Acc_all) when H =:= H_new->
    p05:reverse([[H|[H_new|Acc]]|Acc_all]);
get_next([H|[H_new|T]], Acc, Acc_all) when H =/= H_new ->
    get_next([H_new|T], [],[[H|Acc]|Acc_all]);
get_next([H|[H_new|T]], Acc, Acc_all) when H =:= H_new ->
    get_next([H_new|T], [H|Acc], Acc_all).