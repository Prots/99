%%%-------------------------------------------------------------------
%%% @author prots
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 17. Feb 2014 5:16 PM
%%%-------------------------------------------------------------------
-module(p13).
-author("prots").

%% API
-export([decode/1]).

decode(List) ->
    decode(List, []).

decode([], Res) ->
    p05:reverse(Res);
decode([{Var, Mult}|T], Res) ->
    Res1 = tuple2list(Var, Mult, 1, Res),
    decode(T, Res1).

tuple2list(Var, Mult, Acc, Res) when Mult >= Acc ->
    tuple2list(Var, Mult, Acc + 1, [Var|Res]);
tuple2list(_Var, Mult, Acc, Res) when Mult < Acc ->
    Res.