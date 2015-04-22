if [ -f /home/ofadmin/ofSite/.lock ] || [ ! -f /home/ofadmin/hooks/.regenerate_site ]; then
	exit
fi
touch /home/ofadmin/ofSite/.lock
rm /home/ofadmin/hooks/.regenerate_site
echo "started building at `date`" > /home/ofadmin/openFrameworks.cc/buildingstate
cd /home/ofadmin/ofSite
rm _site/* -r
echo checkout
git checkout _config.py
echo pull
git pull origin master 
echo cp config
cp _configfiles/_config.py .
echo blogofile
/usr/local/bin/blogofile build 2>> /home/ofadmin/openFrameworks.cc/buildingstate
ret=$?
if [ $ret -ne 0 ]
then
	SUBJECT="Failed building site"
	# Email To ?
	EMAIL="arturo@openframeworks.cc"
	# Email text/message
	# send an email using /bin/mail
	/usr/bin/mail -s "$SUBJECT" "$EMAIL" < /home/ofadmin/openFrameworks.cc/buildingstate
	cat /home/ofadmin/openFrameworks.cc/buildingstate
	rm /home/ofadmin/ofSite/.lock
	exit
fi
echo "build finished correctly at `date` " >> /home/ofadmin/openFrameworks.cc/buildingstate
echo copy newsite
rm -rf ../openFrameworks.cc/about 
rm -rf ../openFrameworks.cc/community
rm -rf ../openFrameworks.cc/backgrounds
rm -rf ../openFrameworks.cc/blog
rm -rf ../openFrameworks.cc/css
rm -rf ../openFrameworks.cc/documentation
rm -rf ../openFrameworks.cc/download
rm -rf ../openFrameworks.cc/epub
rm -rf ../openFrameworks.cc/gallery
rm -rf ../openFrameworks.cc/images
rm -rf ../openFrameworks.cc/index.html
rm -rf ../openFrameworks.cc/js
rm -rf ../openFrameworks.cc/setup
rm -rf ../openFrameworks.cc/tutorials
rm -rf ../openFrameworks.cc/doxygen
rm -rf ../openFrameworks.cc/development
mv _site/* ../openFrameworks.cc/
rm /home/ofadmin/ofSite/.lock
rm ../openFrameworks.cc/build.sh

#mkdir ../openFrameworks.cc/epub
#mv _site/css _site/docs
#mv _site/images _site/docs
#mv _site ofDocs
#zip -r ../openFrameworks.cc/epub/ofReference.zip ofDocs/docs
#rm -r ofDocs
#rm ../openFrameworks.cc/ofDocs -r
#rm ../openFrameworks.cc/build.sh
