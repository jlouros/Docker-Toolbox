FROM mcr.microsoft.com/windows/servercore:ltsc2016

EXPOSE 8080

ADD http://javadl.oracle.com/webapps/download/AutoDL?BundleId=210185 'C:\jre-8u91-windows-x64.exe'
RUN powershell start-process -filepath C:\jre-8u91-windows-x64.exe -passthru -wait -argumentlist "/s,INSTALLDIR=c:\Java\jre1.8.0_91,/L,install64.log"
RUN del C:\jre-8u91-windows-x64.exe

ENV JAVA_HOME=c:\\Java\\jre1.8.0_91
RUN setx /M PATH %PATH%;%JAVA_HOME%\bin

ADD http://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/2.19.0/wiremock-standalone-2.19.0.jar 'C:\wiremock\wiremock.jar'

ENTRYPOINT [ "java", "-jar", "C:\\wiremock\\wiremock.jar"]
