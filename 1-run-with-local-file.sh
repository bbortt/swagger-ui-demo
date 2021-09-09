#!/usr/bin/env sh
#
# Run swagger-ui with mounted volume and one file.

docker run --rm -p 80:8080 -e SWAGGER_JSON=/foo/pet-api.json -v ./files/:/foo swaggerapi/swagger-ui

# Notice: When editing files/pet-api.json and hitting F5 you'll receive the latest version!
# That would allow us to poll all files using cron. Still we have just one file here..
exit 0
