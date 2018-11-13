#!/bin/bash
cd ~/trunk/Program/Script/Python
find . -name "*.pyo" | xargs rm -f
cd ~/trunk
svn update
cd ~/trunk/Program/Server/operations
bash reload.sh -o
