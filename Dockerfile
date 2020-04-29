FROM openjdk:8
EXPOSE 8080
ADD target/SecondProjects.war SecondProjects.war
ENTRYPOINT ["wava","-war","/SecondProjects.war"]
