FROM maven:3-amazoncorretto-11

RUN mkdir -p /opt && yum update -y && yum install -y curl

RUN curl -L https://archive.apache.org/dist/hadoop/common/hadoop-3.3.0/hadoop-3.3.0.tar.gz | tar xvz -C /opt

RUN curl -L https://archive.apache.org/dist/spark/spark-3.0.0/spark-3.0.0-bin-hadoop3.2.tgz | tar xvz -C /opt

ENV HADOOP_HOME=/opt/hadoop-3.3.0
ENV SPARK_HOME=/opt/spark-3.0.0-bin-hadoop3.2
ENV HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
ENV HADOOP_MAPRED_HOME=$HADOOP_HOME
ENV HADOOP_COMMON_HOME=$HADOOP_HOME
ENV HADOOP_HDFS_HOME=$HADOOP_HOME
ENV YARN_HOME=$HADOOP_HOME
ENV HADOOP_CLASSPATH=$JAVA_HOME/lib/tools.jar

ENV PATH=$HADOOP_HOME/bin${PATH:+:${PATH}}
ENV PATH=$SPARK_HOME/bin${PATH:+:${PATH}}

CMD ["bash"]
