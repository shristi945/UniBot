



<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="package1.feedback"%>
<%@page import="package1.Conn, package1.Botify, package1.Pos, package1.Potagger, package1.SelectTable, package1.chatbot, package1.query, package1.response"  %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles.css">
        <link type="text/css"  rel="stylesheet" href="button.css">
        <link type="text/css" rel="stylesheet" href="textarea.css" />
        <title>Unibot</title>
        <style>
       
   
</style>
<script>
  
       var flag=true;
       if(flag)
       {
    window.setInterval(function() {
  var elem = document.getElementById('data');
  elem.scrollTop = elem.scrollHeight;
  flag=false;
},1);

       }
       function fun()
       {
           
       }
   
    

</script>
    </head>
    
    <body background="banner.jpg" onload="scrolldown()">
              <div id='cssmenu'>  
<ul>
    <!--<li><a href="home.jsp">UNIBOT</a></li>-->
    
   <li><a href='index.jsp'>Home</a></li>
  
   <li><a href='chat.jsp'>Chat</a></li>
   <li><a href='feedback.jsp'>Feedback</a></li>
   <li><a href='contact.html'>Contact</a></li>
 
</ul>
</div>
        
        
              <%
                   String  m="";
                  String  m1="";String  m2="";String  m3="";
                   String m4="Hi User, Tell me your name? "; String m5="";
                   
                  if(request.getParameter("msg")!=null)
                  {
                      m=request.getParameter("msg");
                      m1=request.getParameter("msg1");
                      m2=request.getParameter("msg2");
                      m3=request.getParameter("msg3");
                      m5=request.getParameter("msg4");
                      
              Statement stm1=Conn.con.createStatement(); 
              
             String squery="insert into chatterbot.chat_table values('"+m5+"','"+m+"')";
             int i=stm1.executeUpdate(squery);
                        
               
                  
                   }
               %>
        
       
                  <form name="myform" action="chat_data.jsp"  method="post">
             
             <% // System.out.println(m);%>
             <input type="hidden" name="yes" value= "<%=m1%>"/>
             <input type="hidden" name="input" value= "<%=m2%>"/>
             <input type="hidden" name="input1" value= "<%=m3%>"/>
             
             <br/><br/>
             <div align="center">  
               
            <table border='0px' cellpadding='1px' cellspacing='0px' style="height: 400px; width: 650px;
                   border: #1f9acc; border-style: solid;
    font-size: xx-large;
    font-weight:  bolder;
    color: #fa0000;
    background: lightyellow;
    outline: #fa0000;" 
    >
                <thead><tr><td style=" text-align: right;font-size: medium">Unibot <font style="color: green;font-size: medium">online</font></td></tr></thead>
                <tbody style=" display: block; height: 350px; width: 650px;  overflow-y: scroll;" id="data" onclick="fun()">
                <tr>
                    <td width="650px"> <img src="unibot.gif"/><%=m4%></td>   
                    
                </tr>
                 <%
                 String ques=null;
                 
                 
                 String ans=null;
                 Statement stm2=Conn.con.createStatement(); 
                 ResultSet rs=stm2.executeQuery("select * from chatterbot.chat_table");
                   Statement stm3=Conn.con.createStatement();
                   
               if(m.equals("Nice talking to you , See you again"))
               {
                 String squery3="truncate table chatterbot.chat_table";
                 int j=stm3.executeUpdate(squery3);
                 
               }
                 
            while(rs.next())
                               {
                                 //int=rs.getInt(1);
                                  ques=rs.getString("ques");
                                 //String keyword=rs.getString("keywords");
                                  ans=rs.getString("ans");
                               
            %>
                                 <tr>
                                     
                                     <td style="   text-align: right;width: 650px" >
                                         <%out.println(ques);%><img src="user.jpg"/> 
                                     </td>
                                    
                                     
                                    
                                 </tr>
                                 <tr>
                                     <td style="width: 650px">
                                         <img src="unibot.gif"/><%out.println(ans);%>   
                                     </td>
                                     
                                    
                                     
                                     </tr>
                             <% }
             
            %>
                </tbody>
            </table>
             </div>
             
             <br/>
             <table>
                 <tr>
                     <td><p style="color:white; font-size: 18px">Enter your question:</p></td>
                     <td colspan="3"><input type="text" name="text2" value=" " placeholder="Your Query" style="width: 1000px;height: 50px; background-color:  lightgoldenrodyellow; border-color:  #1a1a1a;
                                         border-width:  thick; font-family:  sans-serif; font-size: x-large; font-stretch: extra-expanded" autofocus autocomplete="off"/></td>
                 </tr>
                 <tr>
                     
                     <td></td>
                     <td><input type="button" onClick="history.go(0)" value="Clear" style="background-color: #9ad7ef;width: 150px;height: 50px;font-size: large;
                                 border-color: #1a1a1a; border-style: solid; border-width:  thick; border-spacing: initial"/></td>
                     
                     <td> <input type="submit" name="b1" value="Ask Me" style="background-color: #9ad7ef;width: 150px;height: 50px;font-size: large;
                                 border-color: #1a1a1a; border-style: solid; border-width:  thick; border-spacing: initial"/>
                     
                         
                     </td>
                     <td></td>
                     
                     
                 </tr>
                  </table>
                </form>    
    </body>
</html>
         
         
        
    

    
            
            
            




