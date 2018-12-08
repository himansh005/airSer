
<<<<   airSer – A Big-Data Analysis on Airlines   >>>>>

This repository uses Hive to analyse airline datasets. airSer aims to leverage the power of data analysis from any web page. Hence, a dashboard for performing various types of analysis is provided. The datasets are described below and the programs are written in Java and JSP.

The following are the requirements to run the program:

1.	Cloudera CDH + VMWare or equivalent
2.	Apache Tomcat Server
3.	Java 8+
4.	IDE for Java (Eg: Netbeans)
5.     Hive (installed on Cloudera)
6.     JDBC jar files


#The whole repo can be downloaded and run into Netbeans IDE.
#To get started, run the file “MainQueryPage.jsp” under “web” folder.

#The frontend has various data analysis features which correspond to different Big Data Queries. Change the IP address to one shown in Cloudera CDH terminal.(get the ip address of the virtual OS)

#One’s always welcome to try out new queries and this sets a starting point in all Big Data Analysis tasks using HIVE. It still covers the following queries:

1. Find list of Airports operating in the Country India.
2. Find the list of Airlines having zero stops.
3. List of Airlines operating with code share.
4. Which country (or) territory having highest Airports.
5. Find the list of Active Airlines in United state.


#Data Set Descriptions:

1.	airports

It contains the following fields

1. Airport ID Unique OpenFlights identifier for this airport.
2. Name Name of airport. May or may not contain the City name.
3. City Main city served by airport. May be spelled differently
from Name.
4. Country Country or territory where airport is located.
5. IATA/FAA Three letter FAA code, for airports located in Country
"United States of America". 3-letter IATA code, for all
other airports(Blank if not assigned).
6. ICAO Four letter ICAO code.(Blank if not assigned).
7. Latitude Decimal degrees, usually to six significant digits.
Negative is South, positive is North.
8. Longitude Decimal degrees, usually to six significant digits.
Negative is West, positive is East.
9. Altitude In feet.
10.Timezone Hours offset from UTC. Fractional hours are expressed
as decimals, eg. India is 5.5.
11. DST Daylight savings time. One of E (Europe), A
(US/Canada), S (South America), O (Australia), Z (New
Zealand), N (None) or U (Unknown). See also: Help:
Time
12.Tz database time Timezone in "tz" (Olson) format, eg.
"America/Los_Angeles". Zone

2.	airlines

It contains the following fields:

1. Airline Unique OpenFlights identifier for this airline. ID
2. Name Name of the airline.
3. Alias Alias of the airline. For example, All Nippon Airways is
commonly known as "ANA".
4. IATA 2-letter IATA code, if available.
5. ICAO 3-letter ICAO code, if available.
6. Callsign Airline callsign.
7. Country Country or territory where airline is incorporated.
8. Active "Y" if the airline is or has until recently been operational, "N"
if it is defunct. This field is not reliable: in particular, major
airlines that stopped flying long ago, but have not had their
IATA code reassigned (eg. Ansett/AN), will incorrectly show
as "Y".

3.	routes

It contains the following fields
1. Airline 2-letter (IATA) or 3-letter (ICAO) code of the airline.
2. Airline ID Unique OpenFlights identifier for airline (see Airline).
3. Source airport 3-letter (IATA) or 4-letter (ICAO) code of the
source airport.
4. Source airport ID Unique OpenFlights identifier for source airport (see
Airport)

5. Destination airport 3-letter (IATA) or 4-letter (ICAO) code of the
destination airport.
6. Destination airport ID Unique OpenFlights identifier for destination
airport (see Airport)
7. Codeshare "Y" if this flight is a codeshare (that is, not
operated by Airline, but another carrier), empty
otherwise.
8. Stops Number of stops on this flight ("0" for direct)
9. Equipment 3-letter codes for plane type(s) generally used on
this flight, separated by spaces



@authors: Mohd Hamza and Himanshu Thakur 
