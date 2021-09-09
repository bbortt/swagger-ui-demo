#!/usr/bin/env sh
#
# Periodically poll configuration from $POLL_URL.

pollTimeoutSeconds=${POLL_INTERVAL-300}

while : ; do
  echo "polling new configuration.."
  curl -o /usr/share/nginx/html/swagger-config.json $POLL_URL
  nginx -s reload
  sleep $pollTimeoutSeconds
done
