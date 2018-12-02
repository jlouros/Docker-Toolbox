FROM mcr.microsoft.com/windows/nanoserver:sac2016

EXPOSE 8080

ENV JAVA_PKG=server-jre-8u191-windows-x64.tar.gz \
    JAVA_HOME=C:\\jdk1.8.0_191

ADD $JAVA_PKG /
RUN setx /M PATH %PATH%;%JAVA_HOME%\bin

ADD http://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/2.19.0/wiremock-standalone-2.19.0.jar 'C:\wiremock\wiremock.jar'

ENTRYPOINT [ "java", "-jar", "C:\\wiremock\\wiremock.jar"]
