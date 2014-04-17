%%%-------------------------------------------------------------------
%%% @author Volodymyr Kyrychenko <vladimir.kirichenko@gmail.com>
%%% @copyright (C) 2014, strikead.com
%%% @doc
%%%
%%% @end
%%%-------------------------------------------------------------------
-module(freeride_web_app).
-author("Volodymyr Kyrychenko <vladimir.kirichenko@gmail.com>").

-compile({parse_transform, do}).

-behaviour(application).
%% API
-export([start/2, stop/1]).

start(_Type, _Args) -> freeride_web_sup:start_link().

stop(_State) ->
    ok.

