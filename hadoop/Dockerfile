FROM apache/hadoop:3

RUN sudo yum install -y java-11-openjdk-devel \
    python3

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk

ENV HADOOP_CLASSPATH=$JAVA_HOME/lib/tools.jar

CMD ["bash"]
