# consul-template on Amazon Linux

https://hub.docker.com/r/jlouros/consul-template

```shell
##############################################################
# WARNING: assuming commands run from root of the repository #
##############################################################

# build docker image
docker build -t consul-template -f ./dockerfiles-windows/consul-template/amazonlinux/Dockerfile ./dockerfiles-windows/consul-template/amazonlinux/

# (example 1) run container, keeping consul-template running to listen for changes in consul
docker run -e CONSUL_HTTP_ADDR=https://my.consul.server -e FEATURE_FLAGS_CONSUL_PATH=keyValue/path/inConsul -e FEATURE_FLAGS_FILE_PATH=C:\path\inside\container\output.json consul-template

# (example 2) run container, consul-template runs only once
docker run -e CONSUL_HTTP_ADDR=https://my.consul.server -e FEATURE_FLAGS_CONSUL_PATH=keyValue/path/inConsul -e FEATURE_FLAGS_FILE_PATH=C:\path\inside\container\output.json consul-template -once
```
