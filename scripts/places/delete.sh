#!/bin/bash

curl --include --request DELETE "http://localhost:4741/places/${ID}" \
--header "Authorization: Token token=${TOKEN}" \
