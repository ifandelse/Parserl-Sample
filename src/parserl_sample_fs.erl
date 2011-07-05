-module(parserl_sample_fs).

-export([get_record_reader/1, get_next_record/1]).

get_record_reader(Filename) ->
    file:open(Filename, [read]).

get_next_record(IoDevice) ->
    io:get_line(IoDevice, "").



