# Speed-Up
Set of programs and traces to study OpenMP pragmas and directives

command.sh 

Extrae must be installed on local to create the OpenMP traces.

Get traces of a .c program wit OpenMP pragmas

1. Put your .c code on the folder and add the target on Makefile
2. Run on terminal make target
3. Add the name of compiled file on run_ldpreload.sh and change the paths
4. ./run_ldpreload.sh

Step 3 should be done passing the name of the file as an argument and then it will be generic for any file.
