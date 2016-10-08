:- module(songserver,
	  [start/0,
	   start/1]).
	  

:- use_module(library(socket)).
:- use_module(library(unix)).
:- use_module(library(process)).
:- use_module(library(syslog)).

:- use_module(options).
:- use_module(server).
:- use_module(ipc).


:- default_options([port(5555),
		    mode(foreground),
		    logfile('./songserver.log'),
		    pidfile('./songserver.pid'),
		    pidfile('./songserver.debug'),
		    working_directory('/home/mike/Documents/church/Liedermappe/'),
		    tex_directory('/home/mike/Documents/church/Liedermappe/tex/')]).

check_children([], []).
check_children([Pid|Pids0], Pids1) :-
    format('check children~n'),
    process_wait(Pid, Status, [timeout(0)]),
    Status \= timeout,
    !,
    format('Child ~a terminated with status ~w.~n', [Pid, Status]),
    check_children(Pids0, Pids1).
check_children([Pid|Pids0], [Pid|Pids1]) :-
    check_children(Pids0, Pids1).

handle_requests(AcceptFd, Children0) :-
    write(handle_requests), write(Children0), nl,
    check_children(Children0, Children),
    tcp_accept(AcceptFd, Socket, _Peer),
    fork(Pid),
    ( Pid = child
     -> tcp_setopt(Socket, nodelay),
	tcp_open_socket(Socket, InStream, OutStream),
	see(InStream),
	tell(OutStream),
	client_comm,
	close(InStream),
	close(OutStream),
	halt
     ; handle_requests(AcceptFd, [Pid|Children])).


start :- start([]).
start(UserOptions) :-
    create_server(UserOptions, run_server).

run_server :-
    global_opts_get(port, Port), 
    tcp_socket(Socket),
    tcp_setopt(Socket, reuseaddr),
    tcp_bind(Socket, Port),
    tcp_listen(Socket, 5),
    tcp_open_socket(Socket, AcceptFd, _),
    handle_requests(AcceptFd, []).


client_comm :-
    catch(ipc_read_message(Request),
	  Error,
	  log_msg(Error)),
    process_request(Request).

process_request(make(File)) :-
    !,
    pdflatex(File, Success),
    success_msg(Success, SuccessMsg),
    ipc_write_message(SuccessMsg).
process_request(exit) :-
    !,
    ipc_write_message(bye).
process_request(end_of_file) :-
    !.
process_request(UnknownRequest) :-
    ipc_write_message(error(unknown_request(UnknownRequest))).


file_names(File, Texfile, Outfile, Logfile) :-
    global_opts_get(working_directory, WD),
    global_opts_get(tex_directory, TD),
    !,
    atomic_list_concat([TD,File,'.tex'], '', Texfile),
    atomic_list_concat([WD,File,'.pdf'], '', Outfile),
    atomic_list_concat([WD,File,'.log'], '', Logfile).
file_names(_, _, _, _) :-
    throw(error('working directory or tex directory not set!')).


pdflatex(File, Result) :-
    file_names(File, Texfile, Outfile, Logfile),
    ( exists_file(Texfile)		 
     -> run_pdflatex(Texfile, Outfile, Logfile, Result)
     ;  Result=not_found).

run_pdflatex(Texfile, Outfile, Logfile, Result) :-
    process_create('/usr/bin/pdflatex', [Texfile, 'interaction=batchmode'],
		   [stdin(std),
		    stdout(null),
		    stderr(null),
		    process(Pid)]),
    process_wait(Pid, Status),
    get_success(Outfile, Logfile, Status, Result).

get_success(Outfile, Logfile, exit(0), success(Outfile, Logfile)) :-
    !.
get_success(_Outfile, Logfile, exit(N), exitcode(N, Logfile)) :-
    !.
get_success(_Outfile, Logfile, killed(Sig), killed(Sig, Logfile)) :-
    !.
get_success(_, _, Status, unknown_success(Status)).


success_msg(success(Outfile,Logfile), ok(files(Outfile,Logfile))) :-
    !.
success_msg(not_found, error(not_found)) :-
    !.
success_msg(exitcode(N,Logfile), error(unsuccessful(N, Logfile))) :-
    !.
success_msg(killed(_Sig,Logfile), error(unsuccessful(killed, Logfile))) :-
    !.
success_msg(Success, _) :-
    throw(unknown_success(Success)).
