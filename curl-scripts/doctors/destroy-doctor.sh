#!/bin/bash

curl "http://localhost:4741/patients/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}" \

echo
