wget -P /tmp http://apache.crihan.fr/dist/kylin/apache-kylin-2.3.0/apache-kylin-2.3.0-hbase1x-bin.tar.gz

sudo chown -R ubuntu:ubuntu /usr/hdp/2.6.3.0-235/
mkdir /usr/hdp/2.6.3.0-235/kylin
tar -xvf /tmp/apache-kylin-2.3.0-hbase1x-bin.tar.gz -C /usr/hdp/2.6.3.0-235/kylin

sed  -i '1s/^/export PATH=$PATH:$KYLIN_HOME /n/' ~/.bashrc
sed  -i '1s/^/export KYLIN_HOME=/usr/hdp/2.6.3.0-235/kylin/n /' ~/.bashrc
sed  -i '1s/^/export HADOOP_HOME=/usr/hdp/2.6.3.0-235/hadoop/n /' ~/.bashrc
sed  -i '1s/^/export HADOOP_CONF_DIR=/etc/hadoop/conf/n /' ~/.bashrc
sed  -i '1s/^/export HIVE_HOME=/usr/hdp/2.6.3.0-235/hive/n /' ~/.bashrc
sed  -i '1s/^/export HBASE_HOME=/usr/hdp/2.6.3.0-235/hbase/n /' ~/.bashrc
sed  -i '1s/^/export HADOOP_CONF_DIR=/etc/hadoop/conf/n /' ~/.bashrc
sed  -i '1s/^/export JAVA_HOME=/usr/jdk64/jdk1.8.0_112/bin/java/n /' ~/.bashrc

sudo chown -R ubuntu:ubuntu /etc/hadoop 
sed -e  -i 's/kylin.env.hdfs-working-dir/kylin.env.hdfs-working-dir=/etc/hadoop/n/' ~/.bashrc
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin:$HIVE_HOME/bin:$HBASE_HOME/bin:$KYLIN_HOME/bin

#create directory admin for kylin 
sudo su -u hdfs
hdfs dfs -chmod 755 /hdp
hdfs dfs -mkdir /user/admin
hdfs dfs -chmod 755 /user/admin
hdfs dfs -chmod 755 /tmp
hdfs dfs -chmod 755 /kylin
