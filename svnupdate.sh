#!/bin/bash
cd ~/h63/Program/Script/Python
find . -name "*.pyo" | xargs rm -f
cd ~/h63/Program
svn update
cd Documents
svn update
cd ../Navigate
svn update
cd ../Server/operations
bash reload.sh -o