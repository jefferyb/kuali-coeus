# Overview

This script is meant to automate the various steps involved in installing Kuali Coeus Bundle for MySQL and Oracle Server, with very minimum settings in the kc-config.xml file for testing... You can expand on it once you have it up and running...

## What's new?

* Install of KC 1505

## Getting Started

1. git clone https://github.com/jefferyb/kuali-coeus.git
2. cd kuali-coeus
3. run ./install_kuali_coeus as root or with sudo as it may need to install some packages
4. Once it is up, you should be able to login as "admin" at http://$(hostname):8080/kc-dev
5. You can ingest rice-xml-${KC_PROJECT_VERSION}.zip and then coeus-xml-${KC_PROJECT_VERSION}.zip ( the XML files ) that you can find in the DOWNLOADS folder

## Warning

This script doesn't install an Oracle database. You'll have to have one ready and provide the needed info.

For MySQL, if you're running this on a fresh install, it will install MySQL/MariaDB if it's not installed, and you can find your MySQL root generated password at "config_files/Your_MySQL_Root_Password".

**_Warning:_** _This will overwrite your MySQL config file(my.cnf), so if you already have one configured the way you like, make a backup before running the script..._

## Contributing

I just put this script together really quick to help me (and others that may need it) bring a kuali instance up and running for testing... And as a sort of my little documentation of sort on how to get it compile and installed.

Hopefully, with each KualiCo release, things will get a whole lot easier to get a kuali system up and running, but in the meantime, if anyone would like to make this script better, you're more than welcome to commit/contribute some changes to make it better...

