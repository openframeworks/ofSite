if [ ! -f /home/ofadmin/hooks/.regenerate_release ]; then
        exit
fi
version=$(cat /home/ofadmin/hooks/.regenerate_release)
rm -f /home/ofadmin/hooks/.regenerate_release
cd /home/ofadmin/openFrameworks.cc/
mkdir versions/v${version}
cd versions/v${version}/
if [ -f of_v${version}_msys2_release.zip ]; then rm of_v${version}_msys_release.zip; fi
wget http://198.61.170.130/versions/v${version}/of_v${version}_msys2_release.zip 2> ~/logs/import_release.log
if [ -f of_v${version}_vs_release.zip ]; then rm of_v${version}_vs_release.zip; fi
wget http://198.61.170.130/versions/v${version}/of_v${version}_vs_release.zip 2>> ~/logs/import_release.log

if [ -f of_v${version}_osx_release.zip ]; then rm of_v${version}_osx_release.zip; fi
wget http://198.61.170.130/versions/v${version}/of_v${version}_osx_release.zip 2>> ~/logs/import_release.log

if [ -f of_v${version}_linux_release.tar.gz ]; then rm of_v${version}_linux_release.tar.gz; fi
wget http://198.61.170.130/versions/v${version}/of_v${version}_linux_release.tar.gz 2>> ~/logs/import_release.log

if [ -f of_v${version}_linux64_release.tar.gz ]; then rm of_v${version}_linux64_release.tar.gz; fi
wget http://198.61.170.130/versions/v${version}/of_v${version}_linux64_release.tar.gz 2>> ~/logs/import_release.log

if [ -f of_v${version}_ios_release.zip ]; then rm of_v${version}_ios_release.zip; fi
wget http://198.61.170.130/versions/v${version}/of_v${version}_ios_release.zip 2>> ~/logs/import_release.log

if [ -f of_v${version}_android_release.tar.gz ]; then rm of_v${version}_android_release.tar.gz; fi
wget http://198.61.170.130/versions/v${version}/of_v${version}_android_release.tar.gz 2>> ~/logs/import_release.log

if [ -f of_v${version}_linuxarmv6l_release.tar.gz ]; then rm of_v${version}_linuxarmv6l_release.tar.gz; fi
wget http://198.61.170.130/versions/v${version}/of_v${version}_linuxarmv6l_release.tar.gz 2>> ~/logs/import_release.log

if [ -f of_v${version}_linuxarmv7l_release.tar.gz ]; then rm of_v${version}_linuxarmv7l_release.tar.gz; fi
wget http://198.61.170.130/versions/v${version}/of_v${version}_linuxarmv7l_release.tar.gz 2>> ~/logs/import_release.log

