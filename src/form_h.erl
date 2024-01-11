%% @doc Hello world handler.
-module(form_h).

-export([init/2]).

init(Req0, Opts) ->
        Req = cowboy_req:reply(200, #{
                <<"content-type">> => <<"html">>
        }, "<html>
<body>
 
<h2>Text input fields</h2>
 
<form>
<label for='fname'>First name:</label><br>
<input type='text' id='fname' name='fname' value='John'><br>
<label for='lname'>Last name:</label><br>
<input type='text' id='lname' name='lname' value='Doe'><br>
<label for='comment'>Comment:</label><br>
<input type='text' id='comment' name='comment' value='Input comment here'>
</form>
 
</body>
</html>", Req0),
        {ok, Req, Opts}.