#escape=`
FROM microsoft/nanoserver:sac2016

EXPOSE 6379

RUN mkdir C:\data

WORKDIR C:/redis

ADD https://github.com/MicrosoftArchive/redis/releases/download/win-3.2.100/Redis-x64-3.2.100.zip redis.zip

RUN powershell -Command `
    $ErrorActionPreference = 'Stop'; `
    Expand-Archive redis.zip . ; `
    Remove-Item redis.zip -Force

ENTRYPOINT redis-server
