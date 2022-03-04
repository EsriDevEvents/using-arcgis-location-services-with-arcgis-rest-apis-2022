# Use REST in your web browser

You can perform simple HTTP GET requests with just a web browser. You will need your API key to use these examples. Go to your [ArcGIS developer dashboard](https://developers.arcgis.com/dashboard/) to get your API key. Copy your API key and replace the text `YOUR_API_KEY` in the following examples.

## HTTP request

Geocode the location _Palm Springs Convention Center_

```html
https://geocode-api.arcgis.com/arcgis/rest/services/World/GeocodeServer/findAddressCandidates?f=json&address=Palm+Springs+Convention+Center%2C+CA&category=POI&outFields=*&forStorage=false&token=<YOUR_API_KEY>
```

Replace the address text with any address, location, or point of interest you wish to geocode.

## HTML form

[Perform a geocode](./geocode-form.html) by submitting an HTML form. Enter an address or a point of interest, for example `Palm springs convention center`.

[Get directions](./directions-form.html) by submitting an HTML form. Use stops coordinates, for example `-122.68782,45.51238;-122.690176,45.522054;-122.614995,45.526201`.

## JavaScript fetch

[Perform a geocode](./geocode-fetch.html) using JavaScript on an HTML page. Enter an address or a point of interest, for example `Palm springs convention center`.

[Get directions](./directions-fetch.html) using JavaScript on an HTML page. Use stops coordinates, for example `-122.68782,45.51238;-122.690176,45.522054;-122.614995,45.526201`.
