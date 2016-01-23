# Install dependencies
sudo apt-get install vim git libjpeg-dev bash-completion libxml2-dev libxslt1-dev zlib1g-dev nginx php5-common php5-cli php5-fpm

# nginx config
sudo cp nginx.conf /etc/nginx/sites-available/default
sudo sed "s/;cgi.fix_pathinfo = 1;/cgi.fix_pathinfo = 0;/g" /etc/php5/fpm/php.ini
sudo service php5-fpm restart
sudo service nginx restart

# Install ofSite
cd ~
git clone https://github.com/openframeworks/ofSite
cd ofSite
git checkout nikola
./install.sh
./build.sh
rm -r ~/openFrameworks.cc
cp -r output ~/openFrameworks.cc
cp *.php ~/openFrameworks.cc
mkdir ~/logs
mkdir ~/hooks
chmod 775 hooks
sudo chgrp www-data hooks
chmod 775 logs
sudo chgrp www-data logs


# Install ofBook
cd ~
git clone https://github.com/openframeworks/ofBook
cd ofBook
scripts/install_linux.sh
scripts/create_book_linux.sh
cp output/webBook ../openFrameworks.cc/ofBook -r

# Install cron tasks
read -d '' cronlines <<-"_EOF_"
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
* * * * * /home/$USER/ofBook/web/build.sh
* * * * * /home/$USER/ofSite/import_release.sh
_EOF_

echo "$cronlines" | crontab -


# Install locales
sudo sed -i "s/# ja_JP.UTF-8 UTF-8/ja_JP.UTF-8 UTF-8/g" /etc/locale.gen
sudo sed -i "s/# ko_KR.UTF-8 UTF-8/ko_KR.UTF-8 UTF-8/g" /etc/locale.gen
sudo sed -i "s/# es_ES.UTF-8 UTF-8/es_ES.UTF-8 UTF-8/g" /etc/locale.gen
sudo sed -i "s/# de_DE.UTF-8 UTF-8/de_DE.UTF-8 UTF-8/g" /etc/locale.gen
sudo /usr/sbin/locale-gen

