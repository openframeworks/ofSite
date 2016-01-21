# Install dependencies
sudo apt-get install vim git libjpeg-dev bash-completion libxml2-dev libxslt1-dev zlib1g-dev nginx

# nginx config
sudo cp nginx.conf /etc/nginx/sites-available/default
sudo service nginx restart

# Install ofSite
cd ~
git clone https://github.com/openframeworks/ofSite
cd ofSite
git checkout nikola
./install.sh
./build.sh
cp -r output ~/openFrameworks.cc

# Install ofBook
cd ~
git clone https://github.com/openframeworks/ofBook
cd ofBook
scripts/install_linux.sh

# Install cron tasks
read -d '' cronlines <<-"_EOF_"
* * * * * /home/$USER/ofSite/build.sh
* * * * * /home/$USER/ofBook/web/build.sh
* * * * * /home/$USER/ofSite/import_release.sh
_EOF_

echo "$cronlines" | crontab -

