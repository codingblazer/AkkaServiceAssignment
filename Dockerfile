#
# Scala and sbt Dockerfile
#
# Took what hseeberger did and removed scala
# since sbt will install correct version per build.sbt
# https://github.com/hseeberger/scala-sbt
#

# Pull base image
FROM  openjdk:8

ENV SBT_VERSION 0.13.15

# Install sbt
RUN \
  curl -L -o sbt-$SBT_VERSION.deb http://dl.bintray.com/sbt/debian/sbt-$SBT_VERSION.deb && \
  dpkg -i sbt-$SBT_VERSION.deb && \
  rm sbt-$SBT_VERSION.deb && \
  apt-get update && \
  apt-get install sbt && \
  sbt sbtVersion