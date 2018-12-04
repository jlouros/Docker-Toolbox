FROM anapsix/alpine-java:8_server-jre

EXPOSE 8080

ADD http://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/2.19.0/wiremock-standalone-2.19.0.jar 'wiremock.jar'

ENTRYPOINT [ "java", "-jar", "wiremock.jar"]
