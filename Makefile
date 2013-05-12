Version=0.0.1

compile:
	 erlc -o ebin/ src/*.erl

clean:
	 rm -rf ./ebin/*.*

install:
	rm -rf /usr/local/lib/erlang/lib/zwdlib-$(Version)
	mkdir -p /usr/local/lib/erlang/lib/zwdlib-$(Version)/ebin
	cp ebin/*.* /usr/local/lib/erlang/lib/zwdlib-$(Version)/ebin/
	 echo $(Version)
   
