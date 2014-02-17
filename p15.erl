%%%-------------------------------------------------------------------
%%% @author prots
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 17. Feb 2014 5:23 PM
%%%-------------------------------------------------------------------
-module(p15).
-author("prots").

%% API
-export([replicate/2]).

replicate(List, M) ->
    replicate(List, M, []).

replicate([], _M, Res) ->
    p05:reverse(Res);
replicate([H|T], M, Res) ->
    Res1 = mult(H, 1, M, Res),
    replicate(T, M, Res1).

mult(_A, _Acc, 0, _Res) ->
    [];
mult(A, Acc, M, Res) when is_integer(M), Acc =:= M ->
    [A|Res];
mult(A, Acc, M, Res) when is_integer(M), Acc < M ->
    mult(A, Acc + 1, M, [A|Res]).