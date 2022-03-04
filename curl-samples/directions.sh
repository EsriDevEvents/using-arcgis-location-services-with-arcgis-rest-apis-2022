#!/bin/bash
# Edit .env file to set `ARCGIS_APIKEY=YOUR_API_KEY` with the api key you want to use for the request.
# sh ./directions.sh "-122.68782,45.51238;-122.690176,45.522054;-122.614995,45.526201"
##################################################
set -a
. ./.env
set +a
protocol="https://"
host="route-api.arcgis.com"
endpoint="/arcgis/rest/services/World/Route/NAServer/Route_World/solve"
url="${protocol}${host}${endpoint}"
echo "curl ${url}"
curl "${url}" \
-d "f=pjson" \
-d "returnDirections=true" \
-d "startTime=now" \
-d "stops=${1}" \
-d "token=${ARCGIS_APIKEY}"
