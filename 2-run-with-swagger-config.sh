#!/usr/bin/env sh
#
# Run swagger-ui with remote configuration.
# By the way.. LMAO: https://github.com/swagger-api/swagger-ui/issues/6019#issuecomment-916245096.

docker run --rm -p 80:8080 -e CONFIG_URL=https://raw.githubusercontent.com/bbortt/swagger-ui-demo/master/swagger-config.json swaggerapi/swagger-ui

# This does no longer refresh anything - although you (probably) edited the file on git.
exit 0
