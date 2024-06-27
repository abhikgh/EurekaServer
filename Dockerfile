#Application type - downloads the image 
FROM openjdk:8-jdk-alpine

#Add jar to docker container
ADD target/EurekaServer-0.0.2-SNAPSHOT.jar eurekaserver.jar

#Expose the container on a port
EXPOSE 8761

#Command whith which docker container will run 
ENTRYPOINT ["java","-jar","eurekaserver.jar"]