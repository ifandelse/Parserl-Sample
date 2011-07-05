#Parserl Example App

This is a very simple example application demonstrating how Parserl could be integrated into an application.

#How To Use
Open a console, browse to the ebin directory of this repository and then type in "erl" to enter the Erlang shell.
Type this at the Erlang shell prompt:

```erlang 
	% Read and Parse the Test.csv file
    parserl_sample:parse_file("Test.csv").
    
    % Processing ["Test.csv"]
    % Processed: Line          0 "Outliers"   "Malcolm Gladwell"      "9.93\n"
    % Processed: Line          1 "Total Truth"        "Nancy Pearcey" "24.24\n"
    % Processed: Line          2 "Daemon"     "Daniel Suarez" "10.78\n"
    % Processed: Line          3 "The Passage"        "Justin Cronin" "9.60\n"
    % Processed: Line          4 "Structure and Interpretation of Computer Programs, Second Edition"  "Harold Abelson, Gerald J. Sussman, Julie Sussman"      "95.00\n"
    % ok

```

	
