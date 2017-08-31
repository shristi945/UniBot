<%-- 
    Document   : main
    Created on : 24 Feb, 2017, 10:46:10 PM
    Author     : LENOVO
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link type="text/css" rel="stylesheet" href="admincss.css" />
        <title>JSP Page</title>
    </head>
    <body bgcolor="#f0f8ff">
          <%@include file="checksession.jsp" %>
        <%@include file="menu.jsp" %>
        <%
         Class.forName("com.mysql.jdbc.Driver"); 
         java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chatterbot","root","chatbot");  
         
         java.sql.Statement stm= con.createStatement(); 
         ResultSet rs=stm.executeQuery("select * from chatterbot.feedback_mail"); 
        
        %>
        <br/><br/><br/><br/>
        <table border='1px' cellpadding='10px' cellspacing='5px' style='background-color: #fffcf6' align="center" >
            <tr>
                
                <th>Sender Name</th>
                <th>Sender E-mail</th>
                <th>Message</th>
               
                <th>DELETE</th>
            </tr>
            <%
            while(rs.next())
                               {
                                 
                                 String name=rs.getString("name");
                                 String email=rs.getString("email");
                                 String message=rs.getString("message");
                               
            %>
                                 <tr>
                                    
                                     <td>
                                         <%out.println(name);%>
                                     </td>
                                     <td>
                                         <%out.println(email);%>
                                     </td>
                                     <td>
                                         <%out.println(message);%>
                                     </td>
                                     
                                     <td>
                                         <a href="del.jsp" >DELETE</a>
                                     </td>
                                 </tr>
                              <% }
                        
            %>
            
        </table>
    </body>
</html>
