#! /bin/bash

eval "$(cat .env <(echo) <(declare -x))"

curl https://api.localizely.com/v1/projects/$PROJECT_ID/files/upload \
    -v \
    -H "X-Api-Token: $API_TOKEN" \
    -X POST \
    -F "file=@./lib/l10n/intl_messages.arb" \
    -F "lang_code=ja"
