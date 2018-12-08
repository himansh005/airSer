<%-- 
    Document   : MainQueryPage
    Created on : 9 Jun, 2018, 11:21:51 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                background: lemonchiffon;
            }
            .container {
                margin-left: 20%;
                margin-right: 20%;
            }
            
        </style>
    </head>
    <body><center><div class="container">
        <h1>Query Page</h1>
        <br>
        <form action="Airportincountry.jsp">
            <p>Find list of airports operating in India: 
                <button type="submit">Get Answer!</button></p>
        </form>
        <form action="airline0stops.jsp">
            <p>Find list of Airlines having zero stops: 
                <button type="submit">Get Answer!</button></p>
        </form>
        <form action="airlinecodeshr.jsp">
            <p>Find list of Airlines having codeshare: 
                <button type="submit">Get Answer!</button></p>
        </form>
        <form action="airlineinus.jsp">
            <p>Find list of active airlines in US: 
                <button type="submit">Get Answer!</button></p>
        </form>
        <form action="highestairport.jsp">
            <p>Find list of countries having highest airports:
                <button type="submit">Get Answer!</button></p>
        </form>
        </div></center>
    </body>
</html>
