
echo  "Your Username : $USER\n"
echo  "Your Login Name : $LOGNAME\n"
echo  "Your Current Shell : $SHELL\n"
echo  "Home directory : $HOME\n"
echo  "Your Operating System type : \n"
uname -o
echo  "Your current Path setting : $PATH\n"
echo  "Your current Working Directory : \n"
pwd
echo  "Currently logged on users in:\n"
who
echo "Number of logged in users:\n"
users | wc -w



