file_search_path(src, '/home/mike/Documents/church/Liedermappe/pl').

:- use_module(src(server)).

start(Mode) :- create_server([mode(Mode)],
			     (write('hello'), sleep(100000))).
