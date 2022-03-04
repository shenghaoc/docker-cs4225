# Docker images modified for CS4225

## Hadoop
The official `apache/hadoop:3` image includes only the JRE for Java 8, while the JDK is required for compilation and the guide for assignment 1 specifies Java 11.

Using the official image as the parent image, this image installs JDK 11 and points JAVA_HOME to it. Pointing HADOOP_CLASSPATH to tools.jar was required for JDK 8.

This image can be built by runnning:

    docker build --tag cs4225/hadoop .

Older releases are unavailable so the current version (3.3.1) differs from the specified version (3.3.0) by a point release.

## Spark

For the test script, dependency management is done using maven. The [Maven official image](https://hub.docker.com/_/maven) page on Docker Hub provides a guide on how to reuse the Maven local repository. This is necessary to avoid having to download the dependencies again.

This image can be built by runnning:

    docker build --tag cs4225/spark .
