## Installing Hadoop

running 2.7.7 version  

1. set up variables HADOOP_HOME and JAVA_HOME in ~/.bashrc  
```bash
# -- HADOOP ENVIRONMENT VARIABLES START -- #
export HADOOP_HOME=/opt/hadoop/hadoop
export PATH=$PATH:$HADOOP_HOME/bin
export PATH=$PATH:$HADOOP_HOME/sbin
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib"
# -- HADOOP ENVIRONMENT VARIABLES END -- #
export JAVA_HOME=/usr/lib/jvm/jdk-8-oracle-arm32-vfp-hflt/jre 
```
2. run source ~/.bashrc  

3. set up java_home in haddop_env.sh
Hadoop environment variables, uncomment/update the two export lines
```bash
# /opt/hadoop/etc/hadoop/hadoop-env.sh
export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")
export HADOOP_HEAPSIZE=250
```

4. make sure ssh is installed and working  
Make sure that /etc/hosts.allow contains:  
ssh:ALL:allow
sshd:ALL:allow

e  set up slaves in $HADOOP_HOME/etc/hadoop/slaves file
```bash
localhost
MyPiSlave1
MyPiSlave2
```

#### Make sure ssh is running else you'll get port 22 connection error:  
First check openssh-server installed in that system.
check the status of ssh service, make ssh service start.  

```bash 
sudo service ssh status    
sudo service ssh start
```

4. (In Master node only), create a new file named **master** in $HADOOP_HOME/etc/hadoop/ directory.  Add the master node you name here.  
```bash
MyPiHadoopMaster
```
