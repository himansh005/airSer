<%-- 
    Document   : answerquery
    Created on : 6 Jun, 2018, 9:36:29 AM
    Author     : hp
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Country details</title>
    </head>
    <body>
    <center><table border="1">
        <%
            try
            {
                String name1 = request.getParameter("t1");
            Class.forName("org.apache.hive.jdbc.HiveDriver");
            String url = "jdbc:hive2://192.168.16.128:10000/airportdb";
            Connection con = DriverManager.getConnection(url,"","");
            Statement st = con.createStatement();
            String q = "select id,name,timezone from airport where country='"+name1+"'";
            ResultSet rs = st.executeQuery(q);
            while(rs.next())
            {%>
            
            
            <tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>

                
                
                
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
