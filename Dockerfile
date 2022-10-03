#JDK kurulumunu yapıyoruz
FROM openjdk:17

#Projemizin olduğu yeri gösteriyoruz ve kopyalıyoruz
ARG JAR_FILE=target/*.jar
# COPY ${JAR_FILE} docker-0.0.1-SNAPSHOT.jar
COPY target/*.jar docker-test-app2.jar
# ADD target/docker-docker-0.0.1-SNAPSHOT.jar app.jar 

#Çalışacağı portu belirliyoruz
EXPOSE 9091

#Projemizi calistıracak komutu yazıyoruz.
ENTRYPOINT ["java","-jar","docker-test-app2.jar"]