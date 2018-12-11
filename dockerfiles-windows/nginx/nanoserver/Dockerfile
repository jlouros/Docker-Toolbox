# escape=`
FROM mcr.microsoft.com/windows/servercore AS installer
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

ARG NGINX_VERSION="1.14.2"

RUN Write-Host "Downloading Nginx version: $env:NGINX_VERSION"; `
    Invoke-WebRequest -OutFile nginx.zip -UseBasicParsing "http://nginx.org/download/nginx-$($env:NGINX_VERSION).zip"; `
    Expand-Archive nginx.zip -DestinationPath C:\ ; `
    Rename-Item "C:\nginx-$($env:NGINX_VERSION)" C:\nginx;

# NGINX
#FROM mcr.microsoft.com/windows/nanoserver:sac2016
FROM mcr.microsoft.com/windows/servercore

ARG NGINX_VERSION="1.14.2"
ENV NGINX_VERSION ${NGINX_VERSION}

EXPOSE 80 443
WORKDIR C:\nginx
CMD ["C:/nginx/nginx.exe"]

COPY --from=installer C:\nginx\ .
