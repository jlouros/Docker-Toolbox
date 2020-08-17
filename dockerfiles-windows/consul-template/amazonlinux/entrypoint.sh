#!/bin/bash

echo creating consul-template template using consul key "$FEATURE_FLAGS_CONSUL_PATH"
( echo {{ key \"$FEATURE_FLAGS_CONSUL_PATH\" }} ) > base.ctmpl

echo running consul-template with arguments "$@" saving output to "$FEATURE_FLAGS_FILE_PATH"
/tools/consul-template -template base.ctmpl:$FEATURE_FLAGS_FILE_PATH $@
