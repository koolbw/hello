%% @doc Hello world handler.
-module(button_h).

-export([init/2]).

init(Req0, Opts) ->
        Req = cowboy_req:reply(200, #{
                <<"content-type">> => <<"html">>
        }, "<!DOCTYPE html>
<html>
  <head>
    <title>Hello!</title>
  </head>
  <body>
   <a href=""http://localhost:8080"" target=""_blank"">
    <button>Goodbye World</button>
</a>
</a>
  </body>
</html>", Req0),
        {ok, Req, Opts}.