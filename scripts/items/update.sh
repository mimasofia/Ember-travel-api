#!/bin/bash

curl --include --request PATCH "http://localhost:4741/items/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "item": {
      "item_name": "'"${ITEM}"'",
      "place_id": "'"${P}"'"
    }
  }'
