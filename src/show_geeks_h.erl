%% @doc Hello world handler.
-module(show_geeks_h).

-export([init/2]).

init(Req0, Opts) ->
        Req = cowboy_req:reply(200, #{
                <<"content-type">> => <<"text/html">>
        }, "<html><body><img src= 'https://media.geeksforgeeks.org/wp-content/uploads/geeksforgeeks-6.png'></body></html>", Req0),
        {ok, Req, Opts}.