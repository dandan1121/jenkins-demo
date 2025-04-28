# 使用官方 OpenJDK 基础镜像
FROM openjdk:17-jdk-slim

# 设置工作目录
WORKDIR /app

# 复制构建好的 JAR 文件到镜像中
COPY target/*.jar app.jar

# 声明暴露端口（与你的 Spring Boot 应用端口一致）
EXPOSE 8081

# 设置非 root 用户运行（可选但推荐）
RUN useradd -m xdd
USER xdd

# 启动 Spring Boot 应用
ENTRYPOINT ["java","-jar","/app/app.jar"]