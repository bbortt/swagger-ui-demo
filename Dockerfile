FROM swaggerapi/swagger-ui
MAINTAINER Timon Borter <bbortt.github.io>

ENV CONFIG_URL /swagger-config.json
CMD ["sh", "/entrypoint.sh"]

EXPOSE 8080

COPY scripts/entrypoint.sh /entrypoint.sh
COPY scripts/poll.sh /poll.sh
