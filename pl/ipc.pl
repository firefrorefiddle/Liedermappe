:- module(ipc, [message/1,
		ipc_write_message/1,
		ipc_read_message/1]).


message(bye).
message(make(_)).
message(ok(_)).
message(error(_)).
message(end_of_file).


ipc_write_message(Message) :-
    message(Message),
    !,
    write_term(Message, [fullstop(true), nl(true), quoted(true)]),
    flush_output.
ipc_write_message(UnknownMessage) :-
    throw(unknown_message_write(UnknownMessage)).


ipc_read_message(Message) :-
    read_term(Message, [double_quotes(string)]),
    check_message(Message).

check_message(Message) :-
    message(Message),
    !.
check_message(UnknownMessage) :-
    throw(unknown_message_read(UnknownMessage)).

