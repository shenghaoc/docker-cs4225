FROM mcr.microsoft.com/vscode/devcontainers/base:debian

RUN mkdir -p /opt && apt update -y && apt install -y curl

RUN curl -L https://mirrors.huaweicloud.com/kunpeng/archive/compiler/bisheng_jdk/bisheng-jdk-11.0.13-linux-x64.tar.gz | tar xvz -C /opt

RUN curl -L https://archive.apache.org/dist/maven/maven-3/3.8.5/binaries/apache-maven-3.8.5-bin.tar.gz | tar xvz -C /opt

RUN curl -L https://archive.apache.org/dist/hadoop/common/hadoop-3.3.2/hadoop-3.3.2.tar.gz | tar xvz -C /opt

RUN curl -L https://archive.apache.org/dist/spark/spark-3.2.1/spark-3.2.1-bin-hadoop3.2.tgz | tar xvz -C /opt

ENV JAVA_HOME=/opt/bisheng-jdk-11.0.13
ENV HADOOP_HOME=/opt/hadoop-3.3.2
ENV SPARK_HOME=/opt/spark-3.2.1-bin-hadoop3.2
ENV HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
ENV HADOOP_MAPRED_HOME=$HADOOP_HOME
ENV HADOOP_COMMON_HOME=$HADOOP_HOME
ENV HADOOP_HDFS_HOME=$HADOOP_HOME
ENV YARN_HOME=$HADOOP_HOME
ENV HADOOP_CLASSPATH=$JAVA_HOME/lib/tools.jar

ENV PATH=$JAVA_HOME/bin${PATH:+:${PATH}}
ENV PATH=/opt/apache-maven-3.8.4/bin${PATH:+:${PATH}}
ENV PATH=$HADOOP_HOME/bin${PATH:+:${PATH}}
ENV PATH=$SPARK_HOME/bin${PATH:+:${PATH}}

CMD ["bash"]
