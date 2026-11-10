LOG=../logs/webbuild.log
LOCK=/home/ofadmin/ofSite/.lock
FLAG=/home/ofadmin/hooks/.regenerate_site
SITE=/home/ofadmin/ofSite
WEB=/home/ofadmin/openFrameworks.cc
ASSET=https://github.com/openframeworks/ofSite/releases/download/site-latest/openframeworks.cc.tar.gz

if [ -f "$LOCK" ]; then
	exit
fi

cd "$SITE" || exit

# Rebuild when: the PHP webhook wrote the flag, origin/master is ahead,
# or the live tree is not the current HEAD (so a new site-latest tarball
# can land after GitHub Actions finishes).
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
HEAD=$(git rev-parse HEAD)
LIVE_SHA=$(cat "$WEB/.ofsite-commit" 2>/dev/null)
if [ -n "$HEAD" ] && [ "$LIVE_SHA" != "$HEAD" ]; then
	NEED_BUILD=1
fi
if [ -z "$NEED_BUILD" ]; then
	exit
fi

touch "$LOCK"
rm -f "$FLAG"
echo "started building at `date`" > $LOG
echo pull
git pull origin master >> $LOG 2>&1
HEAD=$(git rev-parse HEAD)

SRC=
STAGE=/tmp/ofsite-output
if curl -fsSL -o /tmp/openframeworks.cc.tar.gz "$ASSET" 2>> $LOG; then
	rm -rf "$STAGE"
	mkdir -p "$STAGE"
	if tar -C "$STAGE" -xzf /tmp/openframeworks.cc.tar.gz 2>> $LOG; then
		TB_SHA=$(cat "$STAGE/.ofsite-commit" 2>/dev/null)
		if [ -n "$TB_SHA" ] && [ "$TB_SHA" = "$HEAD" ]; then
			echo "deploy GitHub Actions site-latest $TB_SHA" >> $LOG
			SRC="$STAGE"
		else
			echo "site-latest is ${TB_SHA:-unknown}, HEAD is $HEAD" >> $LOG
		fi
	fi
fi

if [ -z "$SRC" ]; then
	echo nikola
	. nikola/bin/activate
	#nikola clean 2>> $LOG
	nikola build 2>> $LOG
	ret=$?
	if [ $ret -ne 0 ]
	then
		SUBJECT="Failed building site"
		EMAIL="of@openframeworks.cc"
		/usr/bin/mail -s "$SUBJECT" "$EMAIL" < $LOG
		cat $LOG
		rm "$LOCK"
		exit
	fi
	echo "$HEAD" > output/.ofsite-commit
	SRC=output
fi
echo "build finished correctly at `date` " >> $LOG
echo copy newsite
rm -rf "$WEB/about"
rm -rf "$WEB/community"
rm -rf "$WEB/css"
rm -rf "$WEB/documentation"
rm -rf "$WEB/download"
rm -rf "$WEB/gallery"
rm -rf "$WEB/images"
rm -rf "$WEB/index.html"
rm -rf "$WEB/js"
rm -rf "$WEB/setup"
rm -rf "$WEB/tutorials"
rm -rf "$WEB/development"
rm -rf "$WEB/ja"
rm -rf "$WEB/ko"
rm -rf "$WEB/assets"
rm -rf "$WEB/icons"
rm -rf "$WEB/categories"

cp -r "$SRC"/* "$WEB/" 2>> $LOG
if [ -f "$SRC/.ofsite-commit" ]; then
	cp -f "$SRC/.ofsite-commit" "$WEB/.ofsite-commit"
fi
cp *.php "$WEB/" 2>> $LOG
rm "$LOCK" 2>> $LOG
rm -f "$WEB"/*.sh
