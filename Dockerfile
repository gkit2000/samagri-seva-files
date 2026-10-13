FROM eclipse-temurin:21-jdk

WORKDIR /app

# copy app jar
COPY app.jar app.jar

# copy wait-for-it script
COPY wait-for-it.sh wait-for-it.sh
RUN chmod +x wait-for-it.sh

EXPOSE 8000

# wait for mysql, then start spring boot with the prod profile
ENV SPRING_PROFILES_ACTIVE=prod
ENTRYPOINT ["./wait-for-it.sh", "samagriseva-mysql:3306", "--timeout=90", "--", "java", "-jar", "app.jar"]