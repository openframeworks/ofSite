LOG=../logs/webbuild.log
LOCK=/home/ofadmin/ofSite/.lock
FLAG=/home/ofadmin/hooks/.regenerate_site
SITE=/home/ofadmin/ofSite

if [ -f "$LOCK" ]; then
	exit
fi

cd "$SITE" || exit

# Rebuild when the GitHub webhook wrote the flag, or when origin/master
# has commits the checkout does not. Cron runs this every minute; the
# webhook is commit_hook.php, which only works if php-fpm executes it.
NEED_BUILD=
if [ -f "$FLAG" ]; then
	NEED_BUILD=1
fi
if git fetch origin master >/dev/null 2>&1; then
	LOCAL=$(git rev-parse HEAD)
	REMOTE=$(git rev-parse FETCH_HEAD)
	if [ -n "$REMOTE" ] && [ "$LOCAL" != "$REMOTE" ]; then
		NEED_BUILD=1
	fi
fi
if [ -z "$NEED_BUILD" ]; then
	exit
fi

touch "$LOCK"
rm -f "$FLAG"
echo "started building at `date`" > $LOG
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
	EMAIL="of@openframeworks.cc"
	# Email text/message
	# send an email using /bin/mail
	/usr/bin/mail -s "$SUBJECT" "$EMAIL" < $LOG
	cat $LOG
	rm "$LOCK"
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
rm "$LOCK" 2>> $LOG
rm ../openFrameworks.cc/*.sh
