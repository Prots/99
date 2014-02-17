%%%-------------------------------------------------------------------
%%% @author prots
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. Feb 2014 2:37 PM
%%%-------------------------------------------------------------------
-module(p06).
-author("prots").

%% API
-export([is_palindrome/1]).

is_palindrome([]) ->
    true;
is_palindrome([_One]) ->
    true;
is_palindrome([H|T]) ->
    [H_rev|T_new] = p05:reverse(T),
    match(H, H_rev, T_new).

match(H, H_rev, _T) when H =/= H_rev ->
    false;
match(H, H_rev, []) when H =:= H_rev ->
    true;
match(H, H_rev, T) when H =:= H_rev ->
    is_palindrome(T).