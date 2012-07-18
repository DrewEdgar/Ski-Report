#Timbit - Ski Report

This timbit gathers an XML report of ski resorts from across the country and displays the data for the user chosen results.

To run the Timbit:

1) run server.js via Node

2) use localhost:5678/timbittest.html


Files of interest:

/public/SkiReport.html

/public/js/skireport-timbit.js

/timbits/SkiReport.coffee

/view/SkiReport/default.coffee


Testing:

1) Starting the first time should display a Province Drop down.

1b) If not the first time running locally, it will display your previous selections (Stored in a cookie). Click 'Change Resort(s)'.

2) Select a Province.

3) Check a few boxes.

4a) View Results shows the details of the selected resorts.

4b) Go Back will show the details for the user's previously selected resorts.

