-module(parserl_sample).

-export([parse_file/1]).       

parse_file(FilePath) ->
    case filelib:is_file(FilePath) of
        false ->
            io:format("File [~p] does not exist.~n", [FilePath]);
        true ->
            io:format("Processing [~p]~n",[FilePath]),
            {ok, Reader} = parserl_sample_fs:get_record_reader(FilePath),
            RecordParser = fun(Record,LineNum) -> parserl_sample_rp:parse_record(Record,LineNum) end,
            parse_file(Reader, RecordParser)
    end.

parse_file(Reader, RecordParser) ->
    parse_file(Reader, RecordParser, 0).
parse_file(Reader, RecordParser, LineNum) ->
    ReadResult = parserl_sample_fs:get_next_record(Reader),
    case (ReadResult) of
        eof ->
            file:close(Reader);
        Record -> 
            RecordParser(Record, LineNum),
            parse_file(Reader, RecordParser, LineNum + 1)
    end.


