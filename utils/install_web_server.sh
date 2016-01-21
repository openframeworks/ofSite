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
rm -r ~/openFrameworks.cc
cp -r output ~/openFrameworks.cc
mkdir ~/logs

# Install ofBook
cd ~
git clone https://github.com/openframeworks/ofBook
cd ofBook
scripts/install_linux.sh
scripts/create_book_linux.sh
cp output/webBook ../openFrameworks.cc/ofBook -r

# Install cron tasks
read -d '' cronlines <<-"_EOF_"
* * * * * /home/$USER/ofSite/build-server.sh
* * * * * /home/$USER/ofBook/web/build.sh
* * * * * /home/$USER/ofSite/import_release.sh
_EOF_

echo "$cronlines" | crontab -

