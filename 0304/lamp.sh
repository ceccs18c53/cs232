echo "\n Update and Upgrade"
sudo apt-get update -y
sudo apt-get upgrade -y

echo "\n Installing Apache2"
sudo apt-get install apache2 apache2-doc apache2-mpm-prefork apache2-utils libexpat1 ssl-cert -y

echo "\n Installing PHP & Requirements"
sudo apt-get install libapache2-mod-php5 php5-common php5-curl php5-dev php5-gd php5-idn php-pear php5-imagick php5-mcrypt

echo "\n Installing MySQL"
sudo  apt-get install mysq-server mysql-client libmysqlclient15.dev -y

echo "\n Restarting apache "
sudo service apache2 restart
