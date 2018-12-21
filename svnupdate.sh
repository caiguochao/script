#!/bin/bash
cd ~/trunk
svn up
cd ~/trunk/Program/Server/operations
bash reload.sh -o
