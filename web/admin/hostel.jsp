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
        <title>dept jsp Page</title>
    </head>
    <body bgcolor="#f0f8ff">
          <%@include file="checksession.jsp" %>
        <%@include file="menu.jsp" %>
        <%
         Class.forName("com.mysql.jdbc.Driver"); 
         java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chatterbot","root","chatbot");  
         
             java.sql.Statement stm1= con.createStatement(); 
             java.sql.Statement stm2= con.createStatement(); 
         ResultSet rs=stm1.executeQuery("select * from chatterbot.hostel_ques");
         ResultSet rs1=stm2.executeQuery("select * from chatterbot.hostel_ans");         
        
        %>
        <br/></br></br></br>
        <table border='1px' cellpadding='10px' cellspacing='5px' style='background-color: #fffcf6' >
            <tr>
                <td><a href="add_dept_que.jsp">Click Here To Add More Hostel Ques</a></td>
                <td><a href="add_dept_ans.jsp">Click Here To Add More Hostel Ans</a></td>
        </tr>
        </table>
        <br/></br></br></br>
        <table border='1px' cellpadding='10px' cellspacing='5px' style='background-color: #fffcf6' >
            <tr>
                <th>Q_ID</th>
                <th>Hostel_Ques</th>
                <th>EDIT</th>
                <th>DELETE</th>
               
            </tr>
            <%
            while(rs.next())
                               {
                                 
                                 int id=rs.getInt("q_id");
                                 String ques=rs.getString("question");
                                 
                               
            %>
                                 <tr>
                                     <td>
                                         <%out.println(id);%>
                                     </td>
                                     <td>
                                         <%out.println(ques);%>
                                     </td>
                                     
                                     <td>
                                         <a href="hqedit.jsp" >EDIT</a>
                                     </td>
                                     <td>
                                         <a href="hqdel.jsp" >DELETE</a>
                                     </td>
                                 
                              <% }%>
        </table>
        <a href="add_dept_que.jsp">Click Here To Add More Hostel Ques</a>
        <br/></br></br></br>
        <table border='1px' cellpadding='10px' cellspacing='5px' style='background-color: #fffcf6' >
            <tr>
                <th>A_ID</th>
                <th>Ref_ID</th>
                <th>Hostel_Ans</th>
                <th>EDIT</th>
                <th>DELETE</th>
            </tr>
        
        <%
                        while(rs1.next())
                                                       {
                            int a_id=rs1.getInt("ans_id");
                            int ref_id=rs1.getInt("ref_id");
                           String ans=rs1.getString("answer");
                        
            %>
                                <tr>
                                     <td><% out.println(a_id);%></td>
                                     <td><% out.println(ref_id);%></td>
                                     <td><% out.println(ans);%></td>
                                     <td><a href="haedit.jsp" >EDIT</a></td>
                                     <td><a href="haedit.jsp" >DELETE</a></td>
                                 </tr>
                                     <%
                                                         }                                     
%>
        </table>
        <a href="add_dept_que.jsp">Click Here To Add More Hostel Ques</a>
    </body>
</html>
