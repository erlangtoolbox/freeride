%%%-------------------------------------------------------------------
%%% @author Volodymyr Kyrychenko <vladimir.kirichenko@gmail.com>
%%% @copyright (C) 2014, strikead.com
%%% @doc
%%%
%%% @end
%%%-------------------------------------------------------------------
{application, freeride_web, [
    {description, "Freeride Build Server Web"},
    {registered, []},
    {applications, [
        kernel,
        stdlib,
        gaucho,
        xl_stdlib
    ]},
    {mod, {freeride_web_app, []}},
    {env, [
        {dispatch, [
            {'_', [
                {"/[...]", cowboy_static, [
                    {directory, <<"/srv/repo">>},
                    {mimetypes, [
                        {<<".ez">>, [<<"application/x-erlang-application-archive">>]}
                    ]}
                ]}
            ]}
        ]},
        {listeners, [
            {http, 100, [{port, 8080}]}
        ]}]}
]}.