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
2. make sure ssh is installed and working  
Make sure that /etc/hosts.allow contains:  
ssh:ALL:allow
sshd:ALL:allow

3.  set up slaves in $HADOOP_HOME/etc/hadoop/slaves file
```bash
localhost
MyPiSlave1
MyPiSlave2
```

4. (In Master node only), create a new file named **master** in $HADOOP_HOME/etc/hadoop/ directory.  Add the master node you name here.  
```bash
MyPiHadoopMaster
```
