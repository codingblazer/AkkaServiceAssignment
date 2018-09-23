FROM  openjdk:8
ADD target/scala-2.12/AkkaHttpAssignment-assembly-0.1.jar
ENTRYPOINT ["java","-jar","/app.jar"]