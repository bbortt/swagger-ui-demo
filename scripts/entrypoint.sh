#!/usr/bin/env sh
#
# Docker entrypoint starting nginx as well as the polling process.
# Original CMD ["sh", "/usr/share/nginx/run.sh"] (swaggerapi/swagger-ui).

/poll.sh & /docker-entrypoint.sh sh /usr/share/nginx/run.sh
