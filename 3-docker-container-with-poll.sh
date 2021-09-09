#!/usr/bin/env sh
#
# Run swagger-ui with polled remote configuration.

# Build custom image with cron job.
imageName=polling-swagger-ui
docker build -t $imageName .

# Run this thing!
docker run --rm -p 80:8080 -e POLL_URL=https://raw.githubusercontent.com/bbortt/swagger-ui-demo/master/swagger-config.json $imageName

# Well, that's it! Any questions?
# You can set the poll interval using POLL_INTERVAL. Default is 300 seconds.
exit 0
