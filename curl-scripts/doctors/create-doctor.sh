#!/bin/bash

curl "http://localhost:4741/doctors" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "doctor": {
      "first_name": "'"${FIRST_NAME}"'",
      "last_name": "'"${LAST_NAME}"'",
      "zip_code": "'"${ZIP_CODE}"'",
      "specialty": "'"${SPECIALTY}"'"
    }
  }'

echo
