# Bash script to automate the installation process
# raspbian-pi-hadoop-setup.sh

# This is the directory to store our hadoop instance per node, all master and slave nodes need this.
mkdir /opt/hadoop/
mkdir /opt/hadoop_tmp/

# Setting up java.  We need Java 8
apt-get update
apt-get install oracle-java8-jdk

# Making sure we have ssh installed
apt-get remove openssh-client openssh-server
apt-get remove openssh-client openssh-server

sudo apt-get install ssh
