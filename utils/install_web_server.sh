
#!/usr/bin/env bash
set -e
# capture failing exits in commands obscured behind a pipe
set -o pipefail


# trap any script errors and exit
trap "trapError" ERR

trapError() {
	echo
	echo " ^ Received error installing webserver ^"
	sudo service nginx status
	sudo rm /etc/nginx/sites-enabled/website
	sudo service nginx start
	exit 1
}

# Install dependencies
sudo apt-get install vim git libjpeg-dev bash-completion libxml2-dev libxslt1-dev zlib1g-dev nginx php7.0-common php7.0-cli php7.0-fpm ntp

# Install ofSite
# cd ~
# git clone https://github.com/openframeworks/ofSite
# cd ofSite

# Install locales
sudo sed -i "s/# ja_JP.UTF-8 UTF-8/ja_JP.UTF-8 UTF-8/g" /etc/locale.gen
sudo sed -i "s/# ko_KR.UTF-8 UTF-8/ko_KR.UTF-8 UTF-8/g" /etc/locale.gen
sudo sed -i "s/# es_ES.UTF-8 UTF-8/es_ES.UTF-8 UTF-8/g" /etc/locale.gen
sudo sed -i "s/# de_DE.UTF-8 UTF-8/de_DE.UTF-8 UTF-8/g" /etc/locale.gen
sudo sed -i "s/# zh_CN.UTF-8 UTF-8/zh_CN.UTF-8 UTF-8/g" /etc/locale.gen
sudo /usr/sbin/locale-gen

cd ~/ofSite
./install.sh
./build.sh
rm -rf ~/openFrameworks.cc
cp -r output ~/openFrameworks.cc
cp *.php ~/openFrameworks.cc
mkdir -p ~/logs
mkdir -p ~/hooks
chmod 775 ~/hooks
sudo chgrp www-data ~/hooks
chmod 775 ~/logs
sudo chgrp www-data ~/logs


# Install ofBook
cd ~
if [ ! -d ~/ofBook ]; then
	git clone https://github.com/openframeworks/ofBook
	cd ofBook
else
	cd ofBook
	git pull origin master
fi
scripts/install_linux.sh
scripts/create_book_linux.sh
cp output/webBook ../openFrameworks.cc/ofBook -r


# nginx config
cd ~/ofSite/utils
debian_version=$(cat /etc/debian_version | sed -E 's/([0-9]+)(\.[0-9]+)?/\1/')
sudo cp nginx.conf /etc/nginx/sites-available/website
sudo ln -sf /etc/nginx/sites-available/website /etc/nginx/sites-enabled/website
sudo sed -i "s/;cgi.fix_pathinfo = 1;/cgi.fix_pathinfo = 0;/g" /etc/php/7.0/fpm/php.ini 
sudo service php7.0-fpm restart
sudo service nginx restart
grep stretch-backports /etc/apt/sources.list > /dev/null
if [ $? -ne 0 ]; then
	if [ $debian_version -eq 8 ]; then
        	sudo echo "deb http://ftp.debian.org/debian jessie-backports main" >> /etc/apt/sources.list
		sudo apt-get update
		sudo apt-get install certbot -t jessie-backports
	elif [ $debian_version -eq 9]; then
        	sudo echo "deb http://ftp.debian.org/debian stretch-backports main" >> /etc/apt/sources.list
		sudo apt-get update
	        sudo apt-get install certbot -t stretch-backports
	else
		echo "This version of debian is not supported yet, review the letsencrypt method at https://certbot.eff.org/ and fix this script"
		exit 1
	fi
fi

if [ $debian_version -eq 8 ]; then
	sudo certbot certonly --webroot -w /home/ofadmin/openframeworks.cc -d openframeworks.cc -d www.openframeworks.cc
elif [ $debian_version -eq 9 ]; then
	# sudo certbot --authenticator webroot --installer nginx
	sudo certbot --nginx -d openframeworks.cc  -d www.openframeworks.cc
else
	echo "This version of debian is not supported yet, review the letsencrypt method at https://certbot.eff.org/ and fix this script"
	exit 
fi

# Install cron tasks
echo "creating cron ofadmin tasks variable"
{ IFS= read -r -d '' cronlines || [[ $cronlines ]]; } << '_EOF_'
# Edit this file to introduce tasks to be run by cron.
#
# Each task to run has to be defined through a single line
# indicating with different fields when the task will be run
# and what command to run for the task
#
# To define the time you can provide concrete values for
# minute (m), hour (h), day of month (dom), month (mon),
# and day of week (dow) or use '*' in these fields (for 'any').#
# Notice that tasks will be started based on the cron's system
# daemon's notion of time and timezones.
#
# Output of the crontab jobs (including errors) is sent through
# email to the user the crontab file belongs to (unless redirected).
#
# For example, you can run a backup of all your user accounts
# at 5 a.m every week with:
# 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
#
# For more information see the manual pages of crontab(5) and cron(8)
#
# m h  dom mon dow   command

* * * * * /home/$USER/ofSite/build_server.sh
* * * * * /home/$USER/ofBook/web/build.sh >> /home/ofadmin/logs/book.log 2>&1
* * * * * /home/$USER/ofSite/import_release.sh
_EOF_

echo "installing ofadmin crontasks"
echo "$cronlines" | crontab -

# Install cron tasks
echo "creating root cron tasks varaible"
{ IFS= read -r -d '' cronlines_root || [[ $cronlines_root  ]]; } <<'_EOF_'
# Edit this file to introduce tasks to be run by cron.
#
# Each task to run has to be defined through a single line
# indicating with different fields when the task will be run
# and what command to run for the task
#
# To define the time you can provide concrete values for
# minute (m), hour (h), day of month (dom), month (mon),
# and day of week (dow) or use '*' in these fields (for 'any').#
# Notice that tasks will be started based on the cron's system
# daemon's notion of time and timezones.
#
# Output of the crontab jobs (including errors) is sent through
# email to the user the crontab file belongs to (unless redirected).
#
# For example, you can run a backup of all your user accounts
# at 5 a.m every week with:
# 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
#
# For more information see the manual pages of crontab(5) and cron(8)
#
# m h  dom mon dow   command

0 0 * * * /home/$USER/ofSite/utils/collect_stats.sh >> /home/$USER/logs/stats.log
0 5 * * * /home/ofadmin/letsencrypt/renewcert.sh
_EOF_

echo "installing ofadmin crontasks"
sudo echo "$cronlines_root" | crontab -


