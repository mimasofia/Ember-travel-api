#!/bin/bash

curl --include --request PATCH "http://localhost:4741/places/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "place": {
      "name": "'"${NAME}"'"
    }
  }'
