
%%%-----------------------------------------------
%%% @author jia.zhao 
%%% @copyright GUN 
%%% @doc 一个简单的工具类 
%%%  
%%% @end
%%%-----------------------------------------------

-module(zwd).
-compile(export_all).



%%-----------------------------------------------
%% @doc 本方法打印出uncode 的字符
%% @spec 
%% ->{Value} 
%% @end 
%%-----------------------------------------------

print(ListData)->
    io:format("~ts~n", [list_to_binary(ListData)]).
p(ListData)->
    print(ListData).



%%-----------------------------------------------
%% @doc 看这个是否为一个可打印的字符
%% @spec 
%% 
%% @end 
%%-----------------------------------------------
is_printChar(XX)->
    if XX < 0 -> false;  
       XX > 255 -> false;
       true -> true      
    end.

%%-----------------------------------------------
%% @doc 看字符串是否为全部可打印的字符串
%% @spec 
%% 
%% @end 
%%-----------------------------------------------
is_string(XY) ->            
    case is_list(XY) of           
        false -> false;           
        true -> lists:all(is_printChar,XY)
    end.
