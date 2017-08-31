<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles.css">
        <title>Unibot</title>
    </head>
    <body background="banner.jpg">
        
        <div id='cssmenu'>
<ul>
   <li><a href='index.jsp'>Home</a></li>
   <!--<li class='active'><a href='#'>Chat</a>
      <!--<ul>
         <li><a href='#'>Product 1</a>
            <ul>
               <li><a href='#'>Sub Product</a></li>
               <li><a href='#'>Sub Product</a></li>
            </ul>
         </li>
         <li><a href='#'>Product 2</a>
            <ul>
               <li><a href='#'>Sub Product</a></li>
               <li><a href='#'>Sub Product</a></li>
            </ul>
         </li>
      </ul>
   </li>
   <li><a href='#'>About</a></li>-->
   <li><a href='chat.jsp'>Chat</a></li>
   <li><a href='feedback.jsp'>Feedback</a></li>
   <li><a href='contact.html'>Contact</a></li>
</ul>
</div>
        <div align="center">
        <br/> <br/>
        <fieldset style="width: 50%; align-content: center;border-color: #9ad7ef">
            <legend align="center" style="font-size: x-large;font-weight: bold;color: #fa0000">FEEDBACK FORM</legend>
            <form action="feedback_data.jsp" method="post" style="align-content: center ">
            <%
            String m=null;
            m=request.getParameter("msg");
            if(m!=null)
            {%>
            <script>alert('<%=m%>')</script>
           <% }%>
           
            <br/><br/><br/>
        <table align="centre" cellpadding="5" cellspacing="1" border="0">
            <tr>
                <td>
                    <h4 style="color: white;">Your Name:</h4>
                </td>
                <td colspan="2">
                    <input type="text" name="text3" value=" " style="width: 300px;height: 30px; background-color: lightgoldenrodyellow;
                           border-width: thick; border-color: #1a1a1a; border-spacing: initial"/>
                </td>
            </tr>
            <tr>
                <td>
                    <h4 style="color: white;">Your E-mail:</h4>
                </td>
                <td colspan="2">
                    <input type="email" name="email" value=" " style="width: 300px;height: 30px;background-color: lightgoldenrodyellow;
                           border-width: thick; border-color: #1a1a1a; border-spacing: initial"/>
                </td>
            </tr>
            <tr>
                <td>
                    <h4 style="color: white;">Message:</h4>
                </td>
                <td colspan="2">
                    <textarea  name="mess"  style="width: 300px;height: 200px ; background-color: lightgoldenrodyellow;
                           border-width: thick; border-color: #1a1a1a; border-spacing: initial"></textarea>
                </td>
                
            </tr>
            <tr>
                <td>
                    
                </td>
                <td>
                    <input type="submit" name="Send" value="Send" style="background-color: #9ad7ef;width: 100px;height: 40px;font-size: large;
                                 border-color: #1a1a1a; border-style: solid; border-width:  thick; border-spacing: initial"/>
                </td>
                <td>
                    <input type="reset" name="Clear" value="Clear" style="background-color: #9ad7ef;width: 100px;height: 40px;font-size: large;
                                 border-color: #1a1a1a; border-style: solid; border-width:  thick; border-spacing: initial"/>
                </td>
                    
            </tr>
        </table>
        
        </form>
        </fieldset>
        </div>
    </body>
</html>
