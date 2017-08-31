package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"styles.css\">\n");
      out.write("        <title>Unibot</title>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body background=\"banner.jpg\">\n");
      out.write("        \n");
      out.write("        <div id='cssmenu'>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("                \n");
      out.write("    \n");
      out.write("<ul>\n");
      out.write("    <!--<li><a href=\"home.jsp\">UNIBOT</a></li>-->\n");
      out.write("    \n");
      out.write("   <li><a href='home.jsp'>Home</a></li>\n");
      out.write("  \n");
      out.write("   <li><a href='chat.jsp'>Chat</a></li>\n");
      out.write("   <li><a href='feedback.jsp'>Feedback</a></li>\n");
      out.write("   <li><a href='contact.jsp'>Contact</a></li>\n");
      out.write(" \n");
      out.write("</ul>\n");
      out.write("</div>\n");
      out.write("<br/><br/>\n");
      out.write(" \n");
      out.write("        <form action=\"chat.jsp\" method=\"post\">\n");
      out.write("        <table border=\"0px\" width=\"100%\">\n");
      out.write("            <tr><td colspan=\"1\"><h4 style=\"font-weight: bolder;font-size: xx-large;color: #1c89b5\">Welcome to Unibot Website</h4></td></tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("<pre style=\"color: antiquewhite;font-weight: bold;font-size: x-large\">\n");
      out.write(" Unibot is a self learning University Chatbot.The chatbot acts as a virtual\n");
      out.write("assistant for the University to bring up relevant information about the\n");
      out.write("university.The chatbot is available 24 hrs to answer your questions regarding\n");
      out.write("banasthali university.\n");
      out.write("                                                                                  \n");
      out.write("Unibot learns by experience, so the more people talk to her, the smarter she\n");
      out.write("becomes.To begin talking to her, just click one of the two options underneath\n");
      out.write("the large picture of her on the right. You can also click on the chat to me\n");
      out.write("link from the menu bar.\n");
      out.write("Feel free to send us any feedback on unibot or anything new you would like to\n");
      out.write("see with her in future developments by using the feedback page.\n");
      out.write("There are also tips on how to use Unibot so she gives the most accurate\n");
      out.write("responses. </pre></td>\n");
      out.write("                <td>\n");
      out.write("                    <img src=\"ezgif-2-6d8d65cb0a.gif\"/><input type=\"submit\" name=\"Chat\" value=\"Click Here To CHAT\" style=\"background-color: #fa0000;width: 250px;height: 50px;font-size: large;\n");
      out.write("                      font-weight: bold;\"/>\n");
      out.write("                </td>\n");
      out.write("                \n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td></td>\n");
      out.write("            </tr>\n");
      out.write("        </table>        \n");
      out.write("        </form>\n");
      out.write("<h3 style=\"font-weight: bolder;font-size: xx-large;color: #1c89b5\">How to use Unibot</h3>\n");
      out.write("<pre style=\"color: antiquewhite;font-weight: bold;font-size: x-large\">\n");
      out.write("For the best results, you should try to spell your message to Unibot accurately and use proper sentence structure.\n");
      out.write("i.e. How are you? rather than How R U? She also functions best if you just type in one sentence at a time.\n");
      out.write("</pre>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
