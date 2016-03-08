linux=0
linux_suffix=_linux_release.tar.gz

linux64=0
linux64_suffix=_linux64_release.tar.gz

vs=0
vs_suffix=_vs_release.zip

osx=0
osx_suffix=_osx_release.zip

android=0
android_suffix=_android_release.tar.gz

msys2=0
msys2_suffix=_msys2_release.zip

linuxarmv6l=0
linuxarmv6l_suffix=_linuxarmv6l_release.tar.gz

linuxarmv7l=0
linuxarmv7l_suffix=_linuxarmv7l_release.tar.gz

ios=0
ios_suffix=_ios_release.zip

for log in /var/log/nginx/access.log /var/log/nginx/access.log.1; do
    linux_lines=$(cat $log | grep $linux_suffix | wc -l)
    linux=$((linux + linux_lines))
    
    linux64_lines=$(cat $log | grep $linux64_suffix | wc -l)
    linux64=$((linux64 + linux64_lines))
    
    vs_lines=$(cat $log | grep $vs_suffix | wc -l)
    vs=$((vs + vs_lines))
    
    osx_lines=$(cat $log | grep $osx_suffix | wc -l)
    osx=$((osx + osx_lines))
    
    android_lines=$(cat $log | grep $android_suffix | wc -l)
    android=$((android + android_lines))
    
    msys2_lines=$(cat $log | grep $msys2_suffix | wc -l)
    msys2=$((msys2 + msys2_lines))
    
    linuxarmv6l_lines=$(cat $log | grep $linuxarmv6l_suffix | wc -l)
    linuxarmv6l=$((linuxarmv6l + linuxarmv6l_lines))
    
    linuxarmv7l_lines=$(cat $log | grep $linuxarmv7l_suffix | wc -l)
    linuxarmv7l=$((linuxarmv7l + linuxarmv7l_lines))
    
    ios_lines=$(cat $log | grep $ios_suffix | wc -l)
    ios=$((ios + ios_lines))
done
for zlog in /var/log/nginx/access.log.*.gz; do
    linux_lines=$(zcat $zlog | grep $linux_suffix | wc -l)
    linux=$((linux + linux_lines))
    
    linux64_lines=$(zcat $zlog | grep $linux64_suffix | wc -l)
    linux64=$((linux64 + linux64_lines))
    
    vs_lines=$(zcat $zlog | grep $vs_suffix | wc -l)
    vs=$((vs + vs_lines))
    
    osx_lines=$(zcat $zlog | grep $osx_suffix | wc -l)
    osx=$((osx + osx_lines))
    
    android_lines=$(zcat $zlog | grep $android_suffix | wc -l)
    android=$((android + android_lines))
    
    msys2_lines=$(zcat $zlog | grep $msys2_suffix | wc -l)
    msys2=$((msys2 + msys2_lines))
    
    linuxarmv6l_lines=$(zcat $zlog | grep $linuxarmv6l_suffix | wc -l)
    linuxarmv6l=$((linuxarmv6l + linuxarmv6l_lines))
    
    linuxarmv7l_lines=$(zcat $zlog | grep $linuxarmv7l_suffix | wc -l)
    linuxarmv7l=$((linuxarmv7l + linuxarmv7l_lines))
    
    ios_lines=$(zcat $zlog | grep $ios_suffix | wc -l)
    ios=$((ios + ios_lines))
done

echo
echo
echo ---------------------------------------
zcat /var/log/nginx/access.log.7.gz | head -n1 | sed "s/[^-]* - - \[\([^]]*\)\].*/\1/"
tail -n1 /var/log/nginx/access.log | sed "s/[^-]* - - \[\([^]]*\)\].*/\1/"
echo linux $linux
echo linux64 $linux64
echo vs $vs
echo osx $osx
echo android $android
echo msys2 $msys2
echo linuxarmv6l $linuxarmv6l
echo linuxarmv7l $linuxarmv7l
echo ios $ios
