
<%@page import="package1.feedback"%>
<%@page import="package1.Conn, package1.Botify, package1.Pos, package1.Potagger, package1.SelectTable, package1.chatbot, package1.query, package1.response"  %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>

<%
String input=request.getParameter("text2");
      String ans=new String();
      String s1=" ";
      String name="";
              String s2=" ";
              String s3=request.getParameter("yes");
              String s4=request.getParameter("input");
              String s5=request.getParameter("input1");
               
               //if(input.length()==0)
                     // name=input;
              
              
                
              
                 if(input.contains("my name is")|| input.contains("my self")||input.contains("i am"))
                  {
                  if(input.contains("my name is"))
                  name= input.substring(11);
                  else if(input.contains("my self"))
                     name= input.substring(8); 
                  else if(input.contains("i am"))
                      name= input.substring(5);
            
                    
                  ans= "Hi "+name+", you can ask me anything about Banasthali University... ";
                  }
                   
              
              
            else if(input.startsWith("bye"))
              {  
                  ans="Nice talking to you , See you again";
                  feedback f1=new feedback();
                  f1.clear_table();
              
              }
              else if(s3.startsWith("yes"))
             {
                 ans="ok, I learnt it. let us continue.... ";
                 
                 feedback f=new feedback(s5,input);
             }
/*if(input.contains("bye"))
    
{
    ans="Nice talking to you,see you soon BYE.";
}
 else
{*/
      
    else if(input.startsWith("yes"))
      {
          
          s2="yes";
         ans="ok, Tell me your answer"; 
      }
      
    else
      {
   Potagger p=new Potagger();
   Botify b=new Botify(p);
   ans=b.get_input(input);
   query q=new query();
   
   if(ans.equalsIgnoreCase("Sorry I did not get you ,please elaborate"))
   {
       s1=input;
       ans="Sorry I did not get you ,please elaborate or if you know the answer than I can learn."
               + " Enter Yes if you want me to learn the answer otherwise continue chatting...";
   }
  
   
//}
  }
      response.sendRedirect("chat.jsp?pagename=chat_data.jsp &msg="+ans+ "&msg1="+s2+ "&msg2="+s1+ "&msg3="+s4+ "&msg4="+input);
%>

