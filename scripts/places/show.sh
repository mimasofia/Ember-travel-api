curl "http://localhost:4741/places/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"
