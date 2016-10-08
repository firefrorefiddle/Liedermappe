
file_search_path(src, '/home/mike/Documents/church/Liedermappe/pl').


:- begin_tests(options).
:- use_module(src(options)).

test(opts_get_basic) :-
    opts_get([x(z)], x, z).

test(opts_get_basic_fail, [fail]) :-
    opts_get([x(z)], t, z).

test(merge_opts_priority, [
	 forall((Primary=[a(1),b(2),c(3),d(4),e(5)],
		 Secondary=[b(-2),d(-4),f(-6)],
		 opts_key(Primary, Key))),
	 PrimVal == OptsVal
     ]) :-
    merge_opts_map(Primary, Secondary, Options),
    opts_get(Primary, Key, PrimVal),
    opts_get(Options, Key, OptsVal).

test(global_options, [setup(set_options_global([a(1),b(2),c(3)])),
		      cleanup(retractall(options(_)))]) :-
    global_opts_get(b,2).

test(global_options_id, [setup(set_options_global(myopts, [a(1),b(2),c(3)])),
			 cleanup(retractall(options(myopts, _)))]) :-
    global_opts_get(myopts, b,2).

test(get_global_options_exist, [setup(set_options_global(myopts, [a(1),b(2),c(3)])),
				cleanup(retractall(options(myopts, _))),
				FoundOptions = [a(1),b(2),c(3)]]) :-
    get_global_options(myopts, FoundOptions).

test(get_global_options_nonexist, [setup(set_options_global(myopts, [a(1),b(2),c(3)])),
				   cleanup(retractall(options(myopts, _))),
				   FoundOptions = []]) :-
    get_global_options(my_other_opts, FoundOptions).

test(get_global_options_nonexist_default,
     [setup(set_options_global(myopts, [a(1),b(2),c(3)])),
      cleanup(retractall(options(myopts, _))),
      FoundOptions = [none(found)]]) :-
    get_global_options(my_other_opts, FoundOptions, [none(found)]).

:- end_tests(options).


:- begin_tests(ipc).
:- use_module(src(ipc)).

test(ipc_read_write, [forall(message(Message)),
		      Message = ReadMessage]) :-
    with_output_to(string(Str), ipc_write_message(Message)),
    term_string(ReadMessage, Str).

test(ipc_file, [setup((seeing(OldInput),
		       open('test.file', write, Out, [buffer(line)]))),
		cleanup((see(OldInput),
			 close(Out),
			 delete_file('test.file'))),
		forall(message(Message)),
		ReadMessage = Message]) :-
    with_output_to(Out, ipc_write_message(Message)),
    open('test.file', read, In, [buffer(line)]),
    see(In),    
    ipc_read_message(ReadMessage),
    close(In).    

test(ipc_socket, [forall(message(Message)),
		  setup((seeing(OldInput),
			 telling(OldOutput),
			 tcp_socket(SS),
			 tcp_setopt(SS, reuseaddr),
			 tcp_bind(SS, 7654),
			 tcp_listen(SS, 1),
			 tcp_open_socket(SS, AcceptFd, _),
			 thread_create((tcp_socket(CS),
					tcp_setopt(CS, nodelay),
					tcp_connect(CS, localhost:7654, _In, Out),
					with_output_to(Out, ipc_write_message(Message)),
					tcp_close_socket(Out)),
				       ThreadId,
				       []))),
		  cleanup((see(OldInput),
			   tell(OldOutput),
			   close(AcceptFd),
			   thread_join(ThreadId, _))),
		  ReadMessage = Message]) :-
    tcp_accept(AcceptFd, Client, _),
    tcp_open_socket(Client, In, _Out),
    see(In),
    ipc_read_message(ReadMessage).


:- end_tests(ipc).


:- begin_tests(server).

:- use_module(src(server)).


test(server_start_stop_foreground) :-
    fork(Pid),
    (Pid = child
     -> create_server([mode(foreground)], (write("hello"), sleep(10)))
     ; sleep(1),
       teardown_server).


:- end_tests(server).


:- begin_tests(songserver).

:- use_module(src(songserver)).

%:- test(songserver_background,
%	[setup(songserver:start),
	 
	 

:- end_tests(songserver).
