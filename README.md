# Docker images modified for CS4225

## Hadoop
The official apache/hadoop:3 image includes only the JRE for Java 8, while the JDK is required for compilation and the guide for assignment 1 specifies Java 11.

Using the official image as the parent image, this image installs JDK 11 and points JAVA_HOME to it. Pointing HADOOP_CLASSPATH to tools.jar was required for JDK 8.

This image can be built by runnning:

    docker build --tag cs4225/hadoop .

