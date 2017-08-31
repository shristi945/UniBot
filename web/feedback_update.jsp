

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
         
        <%@include file="menu.jsp" %>
        <%
         Class.forName("com.mysql.jdbc.Driver"); 
         java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chatterbot","root","chatbot");  
         
         java.sql.Statement stm= con.createStatement(); 
         ResultSet rs=stm.executeQuery("select * from chatterbot.main_table"); 
        
        %>
        <br/><br/><br/><br/>
        <table border='1px' cellpadding='10px' cellspacing='5px' style='background-color: #fffcf6' >
            <tr>
                <th>ID</th>
                <th>Question</th>
                <th>Answer</th>
                <th>Delete</th>
            </tr>
            <%
            while(rs.next())
                               {
                                 int id1=rs.getInt(1);
                                 String table_name=rs.getString("table_name");
                                 String keywords=rs.getString("keywords");
                                 String ans_table=rs.getString("ans_table");
                               
            %>
                                 <tr>
                                     <td>
                                         <%out.println(id1);%>
                                     </td>
                                     <td>
                                         <%out.println(table_name);%>
                                     </td>
                                     <td>
                                         <%out.println(keywords);%>
                                     </td>
                                     <td>
                                         <%out.println(ans_table);%>
                                     </td>
                                     <td>
                                         <a href="edit.jsp">EDIT</a>
                                     </td>
                                     <td>
                                         <a href="del.jsp" >DELETE</a>
                                     </td>
                                     <td>
                                         <input type="hidden" name="id" value=<%=id1%>/>
                                     </td>
                                 </tr>
                                
                              <% }
                        
            %>
            
        </table>
    </body>
</html>
