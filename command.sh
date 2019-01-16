#!/bin/bash
# ------------------------------------------------------------------
# [Author] Daniel Pujazon Bonet
#          Command Dispatcher Batch file oriented to compile and debbug OpenMP Programs
# ------------------------------------------------------------------

VERSION=0.1.0
SUBJECT="Command Dispatcher Batch OpenMP soruce code oriented"

COMMAND="$1"
PROGRAM="$2"

USAGE="Usage: \$COMMAND must be {compile|remove} and \$2 source file name (without .c)"
OK_COMPILE="$PROGRAM.c has been compiled successfull!"

if [ "$COMMAND" == '' ] || [ "$2" == '' ]; then
		echo $USAGE
        exit 1;
fi

case "$COMMAND" in
        compile)
            echo 'Compiling '$PROGRAM.c' ...'
            gcc -o $PROGRAM $PROGRAM.c
            #we should be able to get command status value and then check if it 
            #succeed or not           
            #echo $OK_COMPILE
            exit 0
            ;;
         
        remove)
            echo 'Removing '$PROGRAM' ...'
            rm $PROGRAM
            ;;        
        *)
            echo $USAGE
            exit 1
 
esac

