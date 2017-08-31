<%-- 
    Document   : edit
    Created on : 26 Mar, 2017, 10:30:47 AM
    Author     : LENOVO
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link type="text/css" rel="stylesheet" href="admincss.css" />
    </head>
    <body bgcolor="#f0f8ff">
         <%@include file="checksession.jsp" %>
        <%@include file="menu.jsp" %>
        <br/><br/><br/>
         <%
             String id=request.getParameter("id");
             //int id0=Integer.parseInt(id);
             //out.println(id);
             
         Class.forName("com.mysql.jdbc.Driver"); 
         java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chatterbot","root","chatbot");  
         
         java.sql.Statement stm= con.createStatement(); 
         ResultSet rs=stm.executeQuery("select * from chatterbot.main_table where id='"+id+"'"); 
        
        %>
        <div align="center">
        <form action="edit_data.jsp" method="post">
        <table border='1px' cellpadding='10px' cellspacing='5px' style='background-color: #fffcf6' >
          

                <%
            while(rs.next()){
                                 int id1=rs.getInt(1);
                                 String table_name=rs.getString("table_name");
                                 String keywords=rs.getString("keywords");
                                 String ans_table=rs.getString("ans_table");
                               
            %>
           
            <tr>
                <td>
                    <h4>Enter Id no:</h4>
                </td>
                <td>
                    <input type="text" name="id" value="<%=id1%>"/>
                </td>
            </tr>
            <tr>
                <td><h4>Enter Table Name:</h4></td>
                <td>
                    <input type="text" name="tname" value="<%=table_name%>"/>
                </td>
            </tr>
            <tr>
                <td><h4>Enter Keywords:</h4></td>
                <td>
                    <input type="text" name="key" value="<%=keywords%>"/>
                </td>
            </tr>
            <tr>
                <td><h4>Enter Answer Table:</h4></td>
                <td>
                    <input type="text" name="anstable" value="<%=ans_table%>"/>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" name="Update" value="Update"/>
                </td>
                    
                
            </tr>
            <%  } %>
            </table>
        </form>
            
        </div>
    </body>
</html>
