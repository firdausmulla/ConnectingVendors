<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Location.aspx.cs" Inherits="Location" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Boxicons -->
    <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
    <!-- Fontawesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="./style.css" />
    <title>Map</title>
    <!--Translate Link-->
    <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
    <script type="text/javascript" src="Translate.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDDZpfzjvQOtehL8l4yXjr00ETgXWksfPg"></script>
    <script type="text/javascript">
        function initMap() {
            const locations = [
                { latitude: 28.6129, longitude: 77.2295 },
                { latitude: 18.9655, longitude: 72.8442 },
                { latitude: 19.1314, longitude: 72.9269 },
                { latitude: 26.9124, longitude: 75.7873 },
                { latitude: 19.0099, longitude: 72.8426 },
                { latitude: 28.6129, longitude: 77.2295 },
            ];

            const map = new google.maps.Map(document.getElementById("map"), {
                zoom: 4,
                center: new google.maps.LatLng(locations[0].latitude, locations[0].longitude)
            });

            for (let i = 0; i < locations.length; i++) {
                const location = locations[i];
                const marker = new google.maps.Marker({
                    position: new google.maps.LatLng(location.latitude, location.longitude),
                    map: map,
                    title: `Location ${i + 1}`
                });
            }
        }
    </script>
</head>
<body onload="initMap()">
    <!-- HEADER -->
    <header class="header">
        <nav>
            <img src="images/websiteicon.jpg" class="logob" />
            <ul>
                <li><a href="Home1.aspx">HOME</a></li>
                <li><a href="aboutus.aspx">ABOUT US</a></li>
                <li><a href="VendorsPage.aspx" class="active">VENDORS</a></li>
                <li><a href="Location.aspx">LOCATION</a></li>
                <li><a href="VendSignUp.aspx">Become a Vendor</a></li>
            </ul>
            <div></div>
        </nav>
    </header>
    <div class="intro">
        <h1>LOCATE VENDORS</h1>
        <div id="map" style="height: 500px;"></div>
    </div>

    <button onclick="openMaps()">Open Google Maps</button>
	
	<script>
        function openMaps() {
            // Get the user's current location
            navigator.geolocation.getCurrentPosition((position) => {
                const latitude = position.coords.latitude;
                const longitude = position.coords.longitude;

                // Build the Google Maps URL with the coordinates
                const mapsUrl = `https://www.google.com/maps?q=${latitude},${longitude}`;

                // Open the URL in a new tab
                window.open(mapsUrl, '_blank');
            });
        }
	</script>
</body>
</html>
