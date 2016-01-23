LOG=../logs/webbuild.log
if [ -f /home/ofadmin/ofSite/.lock ] || [ ! -f /home/ofadmin/hooks/.regenerate_site ]; then
	exit
fi
touch /home/ofadmin/ofSite/.lock
rm /home/ofadmin/hooks/.regenerate_site
echo "started building at `date`" > $LOG
cd /home/ofadmin/ofSite
echo pull
git pull origin master 
echo nikola
. nikola/bin/activate
#nikola clean 2>> $LOG
nikola build 2>> $LOG
ret=$?
if [ $ret -ne 0 ]
then
	SUBJECT="Failed building site"
	# Email To ?
	EMAIL="arturo@openframeworks.cc"
	# Email text/message
	# send an email using /bin/mail
	/usr/bin/mail -s "$SUBJECT" "$EMAIL" < $LOG
	cat $LOG
	rm /home/ofadmin/ofSite/.lock
	exit
fi
echo "build finished correctly at `date` " >> $LOG
echo copy newsite
rm -rf ../openFrameworks.cc/about 
rm -rf ../openFrameworks.cc/community
rm -rf ../openFrameworks.cc/css
rm -rf ../openFrameworks.cc/documentation
rm -rf ../openFrameworks.cc/download
rm -rf ../openFrameworks.cc/gallery
rm -rf ../openFrameworks.cc/images
rm -rf ../openFrameworks.cc/index.html
rm -rf ../openFrameworks.cc/js
rm -rf ../openFrameworks.cc/setup
rm -rf ../openFrameworks.cc/tutorials
rm -rf ../openFrameworks.cc/development
rm -rf ../openFrameworks.cc/ja
rm -rf ../openFrameworks.cc/ko
rm -rf ../openFrameworks.cc/assets
rm -rf ../openFrameworks.cc/icons
rm -rf ../openFrameworks.cc/categories

cp -r output/* ../openFrameworks.cc/ 2>> $LOG
cp *.php ../openFrameworks.cc/ 2>> $LOG
rm /home/ofadmin/ofSite/.lock 2>> $LOG
rm ../openFrameworks.cc/*.sh

