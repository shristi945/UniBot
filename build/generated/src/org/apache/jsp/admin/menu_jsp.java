package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class menu_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<div align=\"center\" style=\" text-decoration-color: #CC0000; background-color: bisque;font-weight: bolder;font-size: xx-large; height: 15%\"><a href=\"#\">Welcome to UNIBOT</a> </div>\n");
      out.write("<div align=\"center\">\n");
      out.write("    <ul>\n");
      out.write("       <li><a href=\"main.jsp\">Main</a></li>\n");
      out.write("        <li><a href=\"dept.jsp\">Department</a></li>\n");
      out.write("        <li><a href=\"hostel.jsp\">Hostel</a></li>\n");
      out.write("        <li><a href=\"add.jsp\">Admission</a></li>\n");
      out.write("        <li><a href=\"five_fold.jsp\">Five Fold</a></li>\n");
      out.write("        <li><a href=\"placement.jsp\">Placement</a></li>\n");
      out.write("        <li><a href=\"Location.jsp\">Location</a></li>\n");
      out.write("        <li><a href=\"mails.jsp\">Feedback Mails </a></li>\n");
      out.write("        <li><a href=\"users.jsp\">Change Password </a></li>\n");
      out.write("        <li><a href=\"logout.jsp\">Logout </a></li>\n");
      out.write("    </ul>\n");
      out.write("</div>\n");
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
