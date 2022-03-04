# Use REST on the command line

You can perform simple HTTP requests with cURL on the command line.

## cURL request

The file `geocode.sh` demonstrates a simple, hard-coded shell script that uses the cURL module. You have to edit this file to alter the request parameters. It also requires changing `YOUR_API_KEY` to the API key you get from your [dashboard](https://developers.arcgis.com/dashboard/). To run it, just use your bash command line:

```bash
./geocode.sh
```

The file `arcgis-request.sh` is a slightly better shell script. It breaks out the URL and the parameters into a manageable format for easier changing. The address to geocode is taken from the command line. And the API key is set in the `.env` file.

To use this script first rename `.env.template` to `.env`. Then edit the file to replace `YOUR_API_KEY` with the API key you get from your [dashboard](https://developers.arcgis.com/dashboard/). Save the file. Then run from a command line:

```bash
./arcgis-request.sh "Palm Springs Convention Center"
```

or any address you wich to geocode. Make sure the address is in quotes if it contains spaces or any special characters.

## More information

- [cURL](https://curl.se/)
- [ArcGIS geocoding service](https://developers.arcgis.com/documentation/mapping-apis-and-services/search/geocoding/)
- [ArcGIS Authentication](https://developers.arcgis.com/documentation/mapping-apis-and-services/security/api-keys/)
- [your ArcGIS API keys](https://developers.arcgis.com/api-keys)
