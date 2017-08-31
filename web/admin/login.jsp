<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String userid=request.getParameter("username"); 
session.putValue("userid",userid); 
String pwd=request.getParameter("password"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chatterbot","root","chatbot"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from users where user_id='"+userid+"'"); 
if(rs.next()) 
{ 
if(rs.getString(2).equals(pwd)) 
{ 
//out.println("welcome"+userid);
response.sendRedirect("login_success.jsp");    

} 
else 
{ 
//out.println("Invalid password try again");
 response.sendRedirect("login.html");    
} 
} 

%>
        


