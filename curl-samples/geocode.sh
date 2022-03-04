#!/bin/bash
curl "https://geocode-api.arcgis.com/arcgis/rest/services/World/GeocodeServer/findAddressCandidates" \
-d "f=pjson" \
-d "category=POI" \
-d "outFields=*" \
-d "address=Palm Springs Convention Center, CA" \
-d "token=YOUR_API_KEY"
