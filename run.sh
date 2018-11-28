#!/bin/bash
ps -A | pgrep GameMgr0 | xargs kill -s 9
ps -A | pgrep DBM0 | xargs kill -s 9
ps -A | pgrep DBM1 | xargs kill -s 9
ps -A | pgrep Game0 | xargs kill -s 9
ps -A | pgrep Game1 | xargs kill -s 9
ps -A | pgrep Gate0 | xargs kill -s 9
cd ~/trunk/Program/Server/operations
bash run_server.sh -o
