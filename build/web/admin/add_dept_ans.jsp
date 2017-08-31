

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
            
                <td><h3>Enter reference id of answer to new dept question you entered :</h3></td>
                <td><input type="text" name="ref_id" value="" style="height: 30px;width: 400px"/></td>
                <td><h3>Enter new dept answer to add:</h3></td>
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
String ref_id=request.getParameter("ref_id");
//ques=ques.toUpperCase();
Class.forName("com.mysql.jdbc.Driver"); 
         java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chatterbot","root","chatbot");  
         
             java.sql.Statement stm1= con.createStatement(); 
             
if(request.getParameter("add")!=null)
{
    String squery="INSERT INTO chatterbot.dept_ans (ref_id, answer) VALUES ("+ref_id+", '"+ques+"');";
             // String squery="insert into chatterbot.feedback values('hello','hhhh')";
             int i=stm1.executeUpdate(squery);
    
}
%>