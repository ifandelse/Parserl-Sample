-module(parserl_sample_rp).

-export([parse_record/2]).

-include("sampleRecord.hrl").

parse_record(Record, LineNum) ->
    [ Title, Author, Cost | _] = parserl:parse_string(Record,",", "\""),
    ParsedRecord = #sampleRecord{lineNumber = LineNum, title = Title, author = Author, cost = Cost },
    print_record(ParsedRecord).

print_record(Record) ->
    io:fwrite("Processed: Line ~10B ~p\t~p\t~p~n", [Record#sampleRecord.lineNumber, Record#sampleRecord.title, Record#sampleRecord.author, Record#sampleRecord.cost]).
    
