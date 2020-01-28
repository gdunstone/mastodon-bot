#!/bin/sh

while true; do
  echo "Polling Bot"
  npm start
  echo "Poll done, waiting 600 seconds"
  sleep ${POLL_INTERVAL:-600}
done
