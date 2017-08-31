<%-- 
    Document   : main
    Created on : 24 Feb, 2017, 10:46:10 PM
    Author     : LENOVO
--%>


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
        
        <br/><br/><br/><br/>
       <% String  m=null;
               m=request.getParameter("msg");
         if(m!=null)
         {%>
         <script>alert('<%=m%>')</script>
         <%}       
       %>
        <form action="change_password_data.jsp" method="post">
        <table border='0px' cellpadding='10px' cellspacing='5px' style='background-color: #fffcf6' align="center" >
           
            <tr>
                <td>Enter  username:</td>
                <td><input type="text" name="usr"/></td>
            </tr>
            <tr>
                <td>Enter old password:</td>
                <td><input type="password" name="psw"/></td>
            </tr>
            <tr>
                <td>Enter new password:</td>
                <td><input type="password" name="psw1"/></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="submit" value="OK"/></td>
            </tr>
        </table>
        </form>
            
    </body>
</html>
