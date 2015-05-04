# Overview

This script is meant to automate the various steps involved in installing Kuali Coeus Bundle for MySQL and Oracle Server, with very minimum settings in the kc-config.xml file for testing... You can expand on it once you have it up and running...

## What's new?

* Install of KC 1504.3

## Getting Started

If you want to use your own username, password and database, edit:
compile_and_install_kuali_coeus, kuali_files/J_KC_Install*, kuali_files/kc-config* and in mysql_files/configure_mysql.sql

For MySQL
KC_DB_USERNAME="username"
KC_DB_PASSWORD="password"
KC_DB_NAME="kuali"

For Oracle
KC_DB_ORACLE_USERNAME="system"
KC_DB_ORACLE_PASSWORD="oracle"
KC_DB_ORACLE_NAME="(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=1521))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=XE)))"

Otherwise, to use the default settings, do:

1. git clone https://github.com/jefferyb/kuali-coeus.git
2. cd kuali-coeus
3. check/edit the defined settings in the compile_and_install_kuali_coeus script. Otherwise, it will use the default settings. You may also need to check/edit the install scripts and the kc-config.xml in the kuali_files 
4. run ./compile_and_install_kuali_coeus as root or with sudo as it may need to install some packages

## Warning

This script doesn't install an Oracle database. You'll have to have and edit compile_and_install_kuali_coeus, kc-config_oracle.xml, J_KC_Install_Oracle.sh and J_KC_Install_Oracle_Demo.sh, if you're wanting to install the demo too, to give it the username, password and SID info. 

For MySQL, if you're running this on a fresh install, it will install MySQL/MariaDB if it's not installed. If you have one installed, you'll have to edit compile_and_install_kuali_coeus, kc-config.xml, J_KC_Install.sh and J_KC_Install_Demo.sh, if you're planning to install the demo.

**_Warning:_** _This will overwrite your MySQL config file(my.cnf), so if you already have one configured the way you like, make a backup before running the script..._

## Contributing

I just put this script together really quick to help me (and others that may need it) bring a kuali instance up and running for testing... And as a sort of my little documentation of sort on how to get it compile and installed.

Hopefully, with each KualiCo release, things will get a whole lot easier to get a kuali system up and running, but in the meantime, if anyone would like to make this script better, you're more than welcome to commit/contribute some changes to make it better...

