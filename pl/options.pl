:- module(options, [
	      set_options_global/1,
	      set_options_global/2,	      
	      opts_get/3,
	      opts_key/2,
	      global_opts_get/2,
	      global_opts_get/3,
	      get_global_options/2,
	      get_global_options/3,
	      merge_opts_map/3]).


opts_get(Options, Key, Value) :-
    KV =.. [Key, Value],
    member(KV, Options),
    !.


opts_key(Options, Key) :-
    member(KV, Options),
    KV =.. [Key, _Value].



set_options_global(Options) :-
    set_options_global(options, Options).

set_options_global(OptsId, Options) :-
    GlobOptions =.. [OptsId, Options],
    asserta(GlobOptions).


get_global_options(OptsId, Options) :-
    get_global_options(OptsId, Options, []).

get_global_options(OptsId, Options, Default) :-
    OptsTerm =.. [OptsId, Options],
    (current_predicate(OptsId/1)
     -> call(OptsTerm),
	!
     ; Options = Default).


global_opts_get(Key, Value) :-
    global_opts_get(options, Key, Value).

global_opts_get(OptsId, Key, Value) :-
    OptsTerm =.. [OptsId, Options],
    call(OptsTerm),
    !,
    opts_get(Options, Key, Value).


merge_opts_map(Primary, [], Primary) :-
    !.
merge_opts_map(Primary, [KeyValueTerm|Secondary], Merged) :-
    KeyValueTerm =.. [Key|OrigParameters],
    length(OrigParameters, NumberOfParameters),
    length(UnboundParameters, NumberOfParameters),
    LookupTerm =.. [Key|UnboundParameters],
    (member(LookupTerm, Primary)
     -> merge_opts_map(Primary, Secondary, Merged)
     ;  merge_opts_map([KeyValueTerm|Primary], Secondary, Merged)).
