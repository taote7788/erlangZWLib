
%%%-----------------------------------------------
%%% @author jia.zhao 
%%% @copyright GUN 
%%% @doc 一个简单的工具类 
%%%  
%%% @end
%%%-----------------------------------------------

-module(zwd).
-export([print/1,p/1]).

print(ListData)->
    io:format("~ts~n", [list_to_binary(ListData)]).
p(ListData)->
    print(ListData).
