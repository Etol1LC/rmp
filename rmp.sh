#!/bin/sh

######puredata $@ -nogui -stderr try.pd >/dev/null 2>&1 & PID=$! && LOGFILE=$LOGFILE
vim --clean -c "source script/rconfig2.vim" projects/cheat.rmp; ##kill $PID