echo "\n Operating System name,version number(version codename) :\n"
cat /etc/os-release>tem.txt
grep 'NAME\|VERSION' tem.txt>t.txt
sed '3,$d' t.txt
rm tem.txt
rm t.txt

echo "\n OS Kernel version : \n"
uname -r

echo  "\n All available shells :\n"
cat /etc/shells

echo  "\n C.P.U Information :\n"
cat /proc/cpuinfo>temp.txt
sed -n -e '/processor/,/wp/ p' temp.txt
rm temp.txt

echo "\n Memory Information :\n"
cat /proc/meminfo

echo "\n Hard disk Information :\n"
sudo lshw -short -C disk 
df -h

echo  "\n File System(Mounted) :\n"
mount -l
