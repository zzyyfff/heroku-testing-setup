#!/bin/bash

curl "http://localhost:4741/loans" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "loan": {
      "borrower_id": "'"${BORROWERID}"'",
      "book_id": "'"${BOOKID}"'",
      "date": "'"${DATE}"'"
    }
  }'

echo
