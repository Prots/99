%%%-------------------------------------------------------------------
%%% @author prots
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. Feb 2014 11:37 AM
%%%-------------------------------------------------------------------
-module(p02).
-author("prots").

%% API
-export([but_last/1]).

but_last([]) ->
    empty_list;
but_last([H|[]]) ->
    H;
but_last([_|T = [_,_|_]]) ->
    but_last(T);
but_last(B = [_,_|[]]) ->
    B.

