FROM amazonlinux:2.0.20200722.0
ARG CONSUL_TMPL_VERSION=0.25.1
ENV FEATURE_FLAGS_FILE_PATH /app/bin/feature_state.json
ENV FEATURE_FLAGS_CONSUL_PATH test/feature/flags
ENV CONSUL_HTTP_ADDR ''
WORKDIR /tools
RUN echo "downloading consul-template version ${CONSUL_TMPL_VERSION}"
RUN curl https://releases.hashicorp.com/consul-template/${CONSUL_TMPL_VERSION}/consul-template_${CONSUL_TMPL_VERSION}_linux_amd64.zip -o /tmp/consul-template.zip
RUN yum install unzip -y && \
    unzip /tmp/consul-template.zip -d /tools
COPY entrypoint.sh .
RUN chmod +x ./entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]
