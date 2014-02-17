%%%-------------------------------------------------------------------
%%% @author prots
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 17. Feb 2014 3:44 PM
%%%-------------------------------------------------------------------
-module(p12).
-author("prots").

%% API
-export([decodemod/1]).

decodemod(List) ->
    decode(List, []).

decode([], Res) ->
    p05:reverse(Res);
decode([{Var, Mult}|T], Res) ->
    Res1 = tuple2list(Var, Mult, 1, Res),
    decode(T, Res1);
decode([H|T], Res) ->
    decode(T, [H|Res]).

tuple2list(Var, Mult, Acc, Res) when Mult >= Acc ->
    tuple2list(Var, Mult, Acc + 1, [Var|Res]);
tuple2list(_Var, Mult, Acc, Res) when Mult < Acc ->
    Res.