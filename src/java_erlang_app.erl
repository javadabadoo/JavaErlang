%%%-------------------------------------------------------------------
%% @doc java_erlang public API
%% @end
%%%-------------------------------------------------------------------

-module(java_erlang_app).

-behaviour(application).

%% Application callbacks
-export([start/2
        ,stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    java_erlang_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
