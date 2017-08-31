<%-- 
    Document   : chat
    Created on : 23 Feb, 2017, 11:52:50 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="package1.chat_history"%>;


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles.css">
        <title>Unibot</title>
        
        <script>
            
            function fun1()
            {</script>
                <%
                    chat_history c=new chat_history();
                    c.create_table();
                    System.out.println("WTF");
                    %>
        <script> } </script>
            
        </script>
    </head>
    <body background="banner.jpg">
        
        <div id='cssmenu'>
            
            
                
    
<ul>
    <!--<li><a href="home.jsp">UNIBOT</a></li>-->
    
   <li><a href='index.jsp'>Home</a></li>
  
   <li><a href='chat.jsp' onclick="fun1()">Chat</a></li>
   <li><a href='feedback.jsp'>Feedback</a></li>
   <li><a href='contact.html'>Contact</a></li>
 
</ul>
</div>
<br/><br/>
 
        <form action="chat.jsp" method="post">
        <table border="0px" width="100%">
            <tr><td colspan="1"><h4 style="font-weight: bolder;font-size: xx-large;color: #1c89b5">Welcome to Unibot Website</h4></td></tr>
            <tr>
                <td>
<pre style="color: antiquewhite;font-weight: bold;font-size: x-large">
Unibot is a self learning University Chatbot.The Chatbot acts as a virtual assistant
for the university to bring up relevant information about the university. The Chatbot
is available 24 hrs to answer your questions regarding Banasthali University.

Unibot learns by experience, so the more people talk  to her, the smarter she becomes.
To begin talking to her, just click one of the two options underneath the large picture
of her on the right. You can also click on the chat to me link from the menu bar.

Feel free to send us any feedback on Unibot or anything new you would like to see 
with her in future developments by using the feedback page. There are also tips on
how to use Unibot so she gives the most accurate responses. </pre></td>
                <td>
                    <img src="ezgif-2-6d8d65cb0a.gif"/><input type="submit" name="Chat" value="Click Here To CHAT" style="background-color: #fa0000;width: 250px;height: 50px;font-size: large;
                      font-weight: bold;"/>
                </td>
                
            </tr>
            <tr>
                <td></td>
            </tr>
        </table>        
        </form>
<h3 style="font-weight: bolder;font-size: xx-large;color: #1c89b5">How to use Unibot</h3>
<pre style="color: antiquewhite;font-weight: bold;font-size: x-large">
For the best results, you should try to spell your message to Unibot accurately and use proper sentence structure.
i.e. How are you? rather than How R U? She also functions best if you just type in one sentence at a time.
Also frame questions related to Banasthali in proper English. Say bye to her after ending your chat to clear your chat screen.
</pre>
        
    </body>
</html>
