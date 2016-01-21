if [ -f /home/ofadmin/ofSite/.lock ] || [ ! -f /home/ofadmin/hooks/.regenerate_site ]; then
	exit
fi
touch /home/ofadmin/ofSite/.lock
rm /home/ofadmin/hooks/.regenerate_site
echo "started building at `date`" > /home/ofadmin/openFrameworks.cc/buildingstate
cd /home/ofadmin/ofSite
echo pull
git pull origin master 
echo nikola
source nikola/bin/activate
#nikola clean 2>> /home/ofadmin/openFrameworks.cc/buildingstate
nikola build 2>> /home/ofadmin/openFrameworks.cc/buildingstate
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

mv output/* ../openFrameworks.cc/
rm /home/ofadmin/ofSite/.lock
rm ../openFrameworks.cc/*.sh

