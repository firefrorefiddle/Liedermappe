:- module(server, [
	      log_msg/1,
	      debug_msg/1,
	      default_options/1,
	      create_server/1,
	      create_server/2,
	      teardown_server/0]).

:- use_module(options).
:- dynamic(debugfile/1).
:- dynamic(logfile/1).
:- meta_predicate create_server(0).
:- meta_predicate create_server(+, 0).

log_msg(Msg) :-
    logfile(Logfile),
    with_output_to(Logfile,
		   writeln(Msg)).

debug_msg(Msg) :-
    debugfile(Debugfile),
    with_output_to(Debugfile,
		   writeln(Msg)).


default_options(Options) :-
    set_options_global(user_default_options, Options).


default_server_options([mode(foreground),
			working_directory('.'),
			logfile('./server.log'),
			debugfile('./server.debug'),			
			pidfile('./server.pid')]).


set_options :-
    set_options([]).

set_options(UserOptions) :-    
    get_global_options(user_default_options, DefaultOptions, []),
    set_options(UserOptions, DefaultOptions).

set_options(UserOptions, DefaultOptions) :-
    default_server_options(DefaultServerOptions),
    merge_opts_map(UserOptions, DefaultOptions, Options0),
    merge_opts_map(Options0, DefaultServerOptions, Options),
    set_options_global(Options).


open_log_file(Fact, FileName) :-
    open(FileName, append, Stream, [buffer(line)]),
    LogFileFact =.. [Fact, Stream],
    asserta(LogFileFact).

open_logs :-
    global_opts_get(debugfile, Debugfile),
    global_opts_get(logfile, Logfile),    
    open_log_file(debugfile, Debugfile),
    open_log_file(logfile, Logfile).


create_server(RunServer) :-
    create_server([], RunServer).
create_server(UserOptions, RunServer) :-
    set_options(UserOptions),
    global_opts_get(working_directory, WorkingDirectory),
    working_directory(_OldWD, WorkingDirectory),
    global_opts_get(mode, Mode),
    open_logs,
    prepare_run(Mode),    
    call(RunServer).

write_pid(Pid) :-
    global_opts_get(pidfile, Pidfile),    
    open(Pidfile, write, PidStream),
    write_term(PidStream, pid(Pid), [fullstop(true)]),
    close(PidStream).
    
prepare_run(background) :-
    fork(Pid),
    ( Pid = child
     -> open_null_stream(Null),
	detach_IO(Null)
     ; write_pid(Pid),
       halt).
prepare_run(foreground) :-
    process_id(Pid),
    write_pid(Pid).


teardown_server :-
    teardown_server([]).
teardown_server(UserOptions) :-
    write("teardown"),
    default_server_options(DefaultOptions),
    merge_opts_map(UserOptions, DefaultOptions, FallbackOptions),
    get_global_options(options, Options, FallbackOptions),
    opts_get(Options, pidfile, Pidfile),
    open(Pidfile, read, PidStream),
    seeing(OldInput),
    see(PidStream),
    read_term(pid(Pid), []),
    see(OldInput),
    close(PidStream),
    kill(Pid, term),
    write("killed"),
    delete_file(Pidfile).
