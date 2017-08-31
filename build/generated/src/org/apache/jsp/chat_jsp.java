package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class chat_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"styles.css\">\n");
      out.write("        <link type=\"text/css\"  rel=\"stylesheet\" href=\"button.css\">\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"textarea.css\" />\n");
      out.write("        <title>Unibot</title>\n");
      out.write("        <style>\n");
      out.write("            textarea{\n");
      out.write("    width: 600px;\n");
      out.write("    height: 400px;\n");
      out.write("    font-size: xx-large;\n");
      out.write("    font-weight:  bolder;\n");
      out.write("    color: #fa0000;\n");
      out.write("    background: transparent;\n");
      out.write("    border: aqua;\n");
      out.write("    outline: #fa0000;\n");
      out.write("    text-decoration:  blink;\n");
      out.write("    \n");
      out.write("}\n");
      out.write("   \n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body background=\"banner.jpg\">\n");
      out.write("        \n");
      out.write("              <div id='cssmenu'>  \n");
      out.write("<ul>\n");
      out.write("    <!--<li><a href=\"home.jsp\">UNIBOT</a></li>-->\n");
      out.write("    \n");
      out.write("   <li><a href='index.jsp'>Home</a></li>\n");
      out.write("  \n");
      out.write("   <li><a href='chat.jsp'>Chat</a></li>\n");
      out.write("   <li><a href='feedback.jsp'>Feedback</a></li>\n");
      out.write("   <li><a href='contact.jsp'>Contact</a></li>\n");
      out.write(" \n");
      out.write("</ul>\n");
      out.write("</div>\n");
      out.write("        \n");
      out.write("       \n");
      out.write("         <form  method=\"post\" name=\"chat\">\n");
      out.write("             <br/></br><br/>\n");
      out.write("             ");
 // System.out.println(m);
      out.write("\n");
      out.write("             <!--<input type=\"hidden\" name=\"yes\" value= \"");
      out.print(//m1);
      out.write("\"/>\n");
      out.write("             <input type=\"hidden\" name=\"input\" value= \"");
      out.print(//m2);
      out.write("\"/>\n");
      out.write("             <input type=\"hidden\" name=\"input1\" value= \"");
      out.print(//m3);
      out.write("\"/>-->\n");
      out.write("             <div align=\"center\">  <textarea name=\"chatscreen\"   placeholder=\"See Your Chat Here \" style=\"color:#fa0000\"/>");
      out.print(m4);
      out.print(m);
      out.write("\n");
      out.write("                 \n");
      out.write("                 </textarea></div>\n");
      out.write("             <br/>\n");
      out.write("             \n");
      out.write("                 <tr>\n");
      out.write("                     <td><p style=\"color:white; font-size: 18px\" >Enter your question:</p></td>\n");
      out.write("                     <td colspan=\"3\"><input type=\"text\" name=\"text2\" value=\" \" placeholder=\"Your Query\" style=\"width: 1000px;height: 50px; background-color:  lightgoldenrodyellow; border-color:  #1a1a1a;\n");
      out.write("                                         border-width:  thick; font-family:  sans-serif; font-size: x-large; font-stretch: extra-expanded\" autofocus autocomplete=\"off\"/></td>\n");
      out.write("                 </tr>\n");
      out.write("                 <tr>\n");
      out.write("                     \n");
      out.write("                     <td></td>\n");
      out.write("                     <td><input type=\"button\" onClick=\"history.go(0)\" value=\"Clear\" style=\"background-color: #9ad7ef;width: 150px;height: 50px;font-size: large;\n");
      out.write("                                 border-color: #1a1a1a; border-style: solid; border-width:  thick; border-spacing: initial\"/></td>\n");
      out.write("                     \n");
      out.write("                     <td> <input type=\"submit\" name=\"b1\" value=\"Ask Me\" style=\"background-color: #9ad7ef;width: 150px;height: 50px;font-size: large;\n");
      out.write("                                 border-color: #1a1a1a; border-style: solid; border-width:  thick; border-spacing: initial\"/></td>\n");
      out.write("                     <td></td>\n");
      out.write("                     \n");
      out.write("                     \n");
      out.write("                 </tr>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("         \n");
      out.write("         </form>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("  ");

           
                  String  m="";
                  String  m1="";String  m2="";String  m3="";String m4=" ";
                 
                  if(request.getParameter("b1")!=null)
                  {
                  
                       m=request.getParameter("msg");
                      m1=request.getParameter("msg1");
                      m2=request.getParameter("msg2");
                      m3=request.getParameter("msg3");
                      
                  }
                  else
                  {  
                      
                       m4="Hi User, Tell me your name? ";
                     
                  }
          
            
            
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
