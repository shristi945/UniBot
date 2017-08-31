<%-- 
    Document   : login
    Created on : 24 Feb, 2017, 9:33:16 PM
    Author     : LENOVO
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                
 <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String name=request.getParameter("text3");  
String email=request.getParameter("email");
String message=request.getParameter("mess");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chatterbot","root","chatbot"); 
Statement st= con.createStatement(); 
int i=st.executeUpdate("INSERT INTO chatterbot.feedback_mail (`name`, email, message) VALUES ('"+name+"','"+email+"','"+message+"')");
if(i>0)
          {
    response.sendRedirect("feedback.jsp?pagename=feedback_data.jsp &msg=Message sent successfully!!!!");    
         // out.println("Data is successfully inserted!");     
}

//System.out.println("rows affected by insert "+st.executeUpdate(i));


%>
        

    </body>
</html>
