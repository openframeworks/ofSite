#!/usr/bin/env bash
set -e
# capture failing exits in commands obscured behind a pipe
set -o pipefail


# trap any script errors and exit
trap "trapError" ERR

trapError() {
	echo
	echo " ^ Received error installing website static generator ^"
	exit 1
}

OS=$(uname -s)
PIP=pip
if [ "$OS" == "Linux" ]; then
	sudo apt-get install python3 python3-pip asciidoctor
	PIP=$(ls /usr/bin/pip* | head -n1)
	if [ "$PIP" == "" ]; then
		PIP=$(ls /usr/bin/pip3 | head -n1)
	fi
        if [ "$PIP" == "" ]; then
		PIP=$(which pip)
	fi
        if [ "$PIP" == "" ]; then
		echo Couldn\'t find pip for python3, please install it manually
	fi
fi
if [ "$(which python3)" == "" ]; then
	echo ofSite needs python3, pip and asciidoctor to run, please install them before running this script
	exit 1
fi
sudo $PIP install virtualenv
virtualenv -p $(which python3) nikola
source nikola/bin/activate
pip install --upgrade pip
pip install --upgrade "Nikola[extras]"==7.7.4
pip install --upgrade python-Levenshtein==0.12.0
pip install --upgrade pathlib
pip install --upgrade beautifulsoup4==4.4.1
pip install --upgrade markdown==2.6.5
