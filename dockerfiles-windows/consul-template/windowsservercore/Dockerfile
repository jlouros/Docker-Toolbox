FROM mcr.microsoft.com/windows/servercore:ltsc2019
ARG CONSUL_TMPL_VERSION=0.25.1
ENV FEATURE_FLAG_FILE_PATH C:\\inetpub\\wwwroot\\feature_state.json
ENV FEATURE_FLAG_CONSUL_PATH test/feature/flags
ENV CONSUL_HTTP_ADDR ''
WORKDIR /tools
RUN curl.exe https://releases.hashicorp.com/consul-template/%CONSUL_TMPL_VERSION%/consul-template_%CONSUL_TMPL_VERSION%_windows_amd64.zip -L -s -o consul-template.zip
RUN tar -xf consul-template.zip -C .
COPY entrypoint.bat .
ENTRYPOINT [ "entrypoint.bat" ]
