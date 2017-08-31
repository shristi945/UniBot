<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@include file="checksession.jsp" %>  
<%
         Class.forName("com.mysql.jdbc.Driver"); 
         java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chatterbot","root","chatbot");  
         String userid=request.getParameter("usr");
         String password=request.getParameter("pwd");
         String password_new=request.getParameter("pwd1");
         java.sql.Statement stm= con.createStatement(); 
         ResultSet rs=stm.executeQuery("select * from users where user_id='"+userid+"'");
         if(rs.next()) 
          { 
            if(rs.getString(2).equals(password)) 
             { 
//out.println("welcome"+userid);
                 ResultSet rs1=stm.executeQuery("UPDATE chatterbot.users SET `password` = '"+password_new+"' WHERE id = 1;");
                 
               response.sendRedirect("change_password.jsp?pagename=change_password_data.jsp &msg=password_changed");    

             } 
            else 
             { 
//out.println("Invalid password try again");
               response.sendRedirect("change_password.jsp?pagename=change_password_data.jsp &msg=wrong_password");    
             } 
             } 
        
        %>