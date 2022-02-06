FROM apache/hadoop:3

RUN sudo yum install java-1.8.0-openjdk-devel -y

ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk

ENV HADOOP_CLASSPATH=$JAVA_HOME/lib/tools.jar

CMD ["bash"]
