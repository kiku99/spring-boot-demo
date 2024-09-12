# 1. Base image 설정 (JDK 17)
FROM openjdk:22

# 2. JAR 파일 변수 설정
ARG JAR_FILE=build/libs/*.jar

# 3. JAR 파일을 컨테이너에 복사
COPY ${JAR_FILE} app.jar

# 4. 컨테이너에서 사용할 포트 설정
EXPOSE 8080

# 5. 애플리케이션 실행 명령어
ENTRYPOINT ["java", "-jar", "/app.jar"]
