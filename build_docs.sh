#!/usr/bin/env bash
rm -r documentation
git checkout documentation
source nikola/bin/activate
LD_LIBRARY_PATH=/usr/lib/llvm-6.0/lib/ plugins/documentation/documentation/tools/documentation_update.py
if [ "$?" == "0" ]; then
	nikola build
fi
deactivate
