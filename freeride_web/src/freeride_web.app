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
        xl_stdlib,
        cowboot
    ]},
    {mod, {freeride_web_app, []}}
]}.