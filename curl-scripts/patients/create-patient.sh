#!/bin/bash

curl "http://localhost:4741/patients" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "patient": {
      "first_name": "'"${FIRST_NAME}"'",
      "last_name": "'"${LAST_NAME}"'",
      "diagnosis": "'"${DIAGNOSIS}"'",
      "born_on": "'"${BORN_ON}"'"
    }
  }'

echo
