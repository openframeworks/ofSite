OS=$(uname -s)
PIP=pip
if [ "$OS" == "Linux" ]; then
	sudo apt-get install python3 python3-pip
	PIP=$(ls /usr/bin/pip-3* | head -n1)
fi
if [ "$(which python3)" == "" ]; then
	echo ofSite needs python3 to run, please install it before running this script
	exit 1
fi
sudo $PIP install virtualenv
virtualenv -p $(which python3) nikola
source nikola/bin/activate
$PIP install --upgrade "Nikola[extras]"
$PIP install --upgrade python-Levenshtein

