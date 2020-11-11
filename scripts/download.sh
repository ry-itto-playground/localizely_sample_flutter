#! /bin/bash

eval "$(cat .env <(echo) <(declare -x))" 

cd lib/l10n

curl https://api.localizely.com/v1/projects/$PROJECT_ID/files/download?type=flutter_arb \
    -X GET \
    -o downloaded.zip\
    -H "X-Api-Token: $API_TOKEN"

unzip -o downloaded.zip

rm downloaded.zip
