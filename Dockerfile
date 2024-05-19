# Start with a base image containing Java runtime
FROM openjdk:7u80-jdk-alpine

# The application's jar file
ARG JAR_FILE=bin/maple.jar

# Add the application's jar to the container
ADD ${JAR_FILE} app.jar

# Add the scripts and config directories to the container
ADD scripts scripts
ADD config config

# Set the homePath, scriptsPath, and wzPath environment variables
ENV homePath=./config/
ENV scriptsPath=./scripts/
ENV wzPath=./scripts/wz

# Set Java options
ENV JAVA_OPTS="-Xms512m -Xmx2048m -XX:PermSize=256m -XX:MaxPermSize=512m -XX:MaxNewSize=512m"

# Run the jar file
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -cp /app.jar -server -DhomePath=$homePath -DscriptsPath=$scriptsPath -DwzPath=$wzPath server.Start" ]