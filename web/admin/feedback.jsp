

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
         ResultSet rs=stm.executeQuery("select * from chatterbot.feedback"); 
        
        %>
        <br/><br/><br/><br/>
        <table border='1px' cellpadding='10px' cellspacing='5px' style='background-color: #fffcf6' >
            <tr>
                <th>ID</th>
                <th>Questions</th>
                <th>Answers</th>
                <th>Delete</th>
            </tr>
            <%
            while(rs.next())
                               {
                                 int id=rs.getInt(3);
                                 String ques=rs.getString("question");
                                 String ans=rs.getString("answer");
                                 
                               
            %>
                                 <tr>
                                    <td>
                                         <%out.println(id);%>
                                     </td>
                                     <td>
                                         <%out.println(ques);%>
                                     </td>
                                     <td>
                                         <%out.println(ans);%>
                                     </td>
                                   
                                     <td>
                                         <a href="del.jsp?pagename=feedback.jsp &msg=<%=id%>" >DELETE</a>
                                     </td>
                                    
                                 </tr>
                                
                              <% }
                        
            %>
            
        </table>
    </body>
</html>
