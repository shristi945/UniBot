

<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="admincss.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="checksession.jsp" %>
        <%@include file="menu.jsp" %>
        
        
        <br/>
        <div align="center">
            <form method="get">
            <table border='0px' cellpadding='5px' cellspacing='5px' style='background-color: #fffcf6' >
            <tr>
            
                <td><h3>Enter new dept question to add:</h3></td>
                <td><input type="text" name="add" value="" style="height: 30px;width: 400px"/></td>
            </tr>
            <tr>
                <td>
                    <input type="submit" name="add" value="Add"/>
                </td>
            </tr>
            </table>
            </form>
        </div>
    </body>
</html>
<%
String ques=request.getParameter("add");
//ques=ques.toUpperCase();
Class.forName("com.mysql.jdbc.Driver"); 
         java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chatterbot","root","chatbot");  
         
             java.sql.Statement stm1= con.createStatement(); 
             
if(request.getParameter("add")!=null)
{
    String squery="INSERT INTO chatterbot.dept_ques ( question) VALUES ( '"+ques+"')";
             // String squery="insert into chatterbot.feedback values('hello','hhhh')";
             int i=stm1.executeUpdate(squery);
    
}
%>