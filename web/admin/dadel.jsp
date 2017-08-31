<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%
    String msg=null;
    int id1=0;
String id=request.getParameter("msg");
id1=Integer.parseInt(id);
 Class.forName("com.mysql.jdbc.Driver"); 
         java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chatterbot","root","chatbot");  
         
         java.sql.Statement stm= con.createStatement(); 
         

if(id1!=0)
{
    int i=stm.executeUpdate("DELETE FROM chatterbot.dept_ans WHERE id ="+id1);
    response.sendRedirect("dept.jsp?pagename=dadel.jsp &msg=deleted");
    
    
}

%>