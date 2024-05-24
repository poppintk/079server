# Start with a base image containing Java runtime
FROM openjdk:7u91-jdk-alpine

# The application's jar file
ARG JAR_FILE=target/maple_079-1.0.jar

# Add the application's jar to the container
ADD ${JAR_FILE} app.jar

# Add the scripts and config directories to the container
ADD scripts scripts
ADD config config

COPY UnlimitedJCEPolicy /usr/lib/jvm/java-1.7-openjdk/jre/lib/security/
COPY UnlimitedJCEPolicy /usr/lib/jvm/java-7-openjdk-amd64/jre/lib/security/

# Set the homePath, scriptsPath, and wzPath environment variables
ENV homePath=./config/
ENV scriptsPath=./scripts/
ENV wzPath=./scripts/wz

# Set Java options
ENV JAVA_OPTS="-Xms512m -Xmx2048m -XX:PermSize=256m -XX:MaxPermSize=512m -XX:MaxNewSize=512m"

# Expose the ports
EXPOSE 7575
EXPOSE 9595
EXPOSE 8600
EXPOSE 2525
EXPOSE 2526
EXPOSE 2527
EXPOSE 2528
EXPOSE 2529
EXPOSE 2530


# Run the jar file
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -cp /app.jar -server -DhomePath=$homePath -DscriptsPath=$scriptsPath -DwzPath=$wzPath server.Start" ]