FROM eclipse-temurin:latest

WORKDIR /keycloak
ADD https://github.com/keycloak/keycloak/releases/download/19.0.2/keycloak-19.0.2.tar.gz ./
RUN tar -xzf keycloak-19.0.2.tar.gz && rm keycloak-19.0.2.tar.gz

CMD ["keycloak-19.0.2/bin/kc.sh", "start-dev"]