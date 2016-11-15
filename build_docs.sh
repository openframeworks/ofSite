rm -r _documentation
git checkout _documentation
#cp -r ../../Code/ofSite/_documentation .
_tools/documentation_update.py
exit
if [ "$?" == "0" ]; then
	blogofile build
fi
