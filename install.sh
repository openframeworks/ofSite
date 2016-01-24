OS=$(uname -s)
PIP=pip
if [ "$OS" == "Linux" ]; then
	sudo apt-get install python3 python3-pip asciidoctor
	PIP=$(ls /usr/bin/pip-3* | head -n1)
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
pip install --upgrade "Nikola[extras]"
pip install --upgrade python-Levenshtein
