<%-- 
    Document   : airlinecodeshr
    Created on : 9 Jun, 2018, 11:10:51 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Airlines operating with codeshare</title>
    </head>
    <body>
    <center><table border="1">
        <%
            try
            {
            Class.forName("org.apache.hive.jdbc.HiveDriver");
            String url = "jdbc:hive2://192.168.16.128:10000/airlinedb";
            Connection con = DriverManager.getConnection(url,"","");
            Statement st = con.createStatement();
            String q = "select a.name from routes r join airline a on(r.id = a.id) where r.codeshare='Y'";
            ResultSet rs = st.executeQuery(q);
            while(rs.next())
            {%>
            
            
            <tr>
                <td><%=rs.getString(1)%></td>
                                               
                
            </tr> 
            <%
            }
            
                       
            
            }
            catch(Exception e)
            {
            System.out.println("Exception Caught:" + e.getMessage());
            }
            
        %>
    </center></table>
    </body>
</html>

