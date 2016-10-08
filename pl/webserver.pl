:- module(webserver,
	  [start/0,
	   start/1]).


:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_error)).
:- use_module(library(socket)).

:- use_module(options).
:- use_module(server).
:- use_module(ipc).


default_options([port(8000),
		 url_prefix(pdflatex),
		 songserver_port(5555),
		 songserver_host(localhost),		 
		 mode(foreground),
		 logfile('./webserver.log'),
		 pidfile('./webserver.pid'),
		 pidfile('./webserver.debug'),		 
		 working_directory('/home/mike/Documents/church/Liedermappe/')]).

start :- start([]).
start(UserOptions) :-
    default_options(DefaultOptions),
    merge_opts_map(UserOptions, DefaultOptions, Options),
    create_server(Options, run_http_server).


songserver_address(Host:Port) :-
    options(Options),
    opts_get(Options, songserver_host, Host),
    opts_get(Options, songserver_port, Port).


run_http_server :-
    options(Options),
    opts_get(Options, port, Port),
    opts_get(Options, url_prefix, Prefix),
    http_handler(root(Prefix), handle_latex, [prefix]),
    http_server(http_dispatch, [port(Port)]).

songserver_request_response(Request, Response) :-
    songserver_address(SongserverAddress),
    tcp_socket(Socket),
    tcp_setopt(Socket, nodelay),
    tcp_connect(Socket, SongserverAddress, In, Out),
    seeing(OldInput),
    telling(OldOutput),
    see(In),
    tell(Out),
    ipc_write_message(Request),    
    ipc_read_message(Response),
    debug_msg(Response),
    see(OldInput),
    tell(OldOutput),
    close(In),
    close(Out).


handle_client_request(make(Filename), Result) :-
    songserver_request_response(make(Filename), Result).

respond_result(Data) :-    
    write(Data).

handle_latex(Request) :-
    PathTerm =.. [path_info,PathInfo],
    member(PathTerm, Request),
    atom_concat('/', FileRequested, PathInfo),    
    handle_client_request(FileRequested, Result),
    format('Content-type: text/plain~n~n'),    
    respond_result(Result).
