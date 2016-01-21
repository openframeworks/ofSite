pip install virtualenv
virtualenv -p $(which python3) nikola
source nikola/bin/activate
pip install --upgrade "Nikola[extras]"
pip install --upgrade python-Levenshtein

