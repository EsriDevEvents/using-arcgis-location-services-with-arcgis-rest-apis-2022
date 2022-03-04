#!/bin/bash
# Edit .env file to set `ARCGIS_APIKEY=YOUR_API_KEY` with the api key you want to use for the request.
# sh ./arcgis-request.sh "Palm%20Springs%20Convention%20Center%2C%20CA"
##################################################
set -a
. ./.env
set +a
protocol="https://"
host="geocode-api.arcgis.com"
endpoint="/arcgis/rest/services/World/GeocodeServer/findAddressCandidates"
url="${protocol}${host}${endpoint}"
echo "curl ${url}"
curl "${url}" \
-d "f=pjson" \
-d "category=POI" \
-d "outFields=*" \
-d "address=${1}" \
-d "token=${ARCGIS_APIKEY}"
