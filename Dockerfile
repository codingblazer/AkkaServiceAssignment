# Define the environment
FROM ubuntu

# Define environment variables
ENV SHARE /usr/local/share
ENV SCALA_HOME $SHARE/scala
ENV JAVA_HOME $SHARE/java
ENV PATH=$SCALA_HOME/bin:$JAVA_HOME/bin:$PATH

# Move over JDK and Scala
ADD jdk-8u181-linux-x64.tar.gz /
ADD scala-2.12.6.tgz /

# Get JDK and Scala into place
RUN mv /jdk-8u181-linux-x64 $JAVA_HOME
RUN mv /scala-2.12.6 $SCALA_HOME

CMD ["/bin/bash"]