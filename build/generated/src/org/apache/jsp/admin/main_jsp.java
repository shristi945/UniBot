package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.ResultSet;
import com.mysql.jdbc.Statement;
import java.sql.DriverManager;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/admin/menu.jsp");
  }

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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("         <link type=\"text/css\" rel=\"stylesheet\" href=\"admincss.css\" />\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"#f0f8ff\">\n");
      out.write("         \n");
      out.write("        ");
      out.write("<div align=\"center\" style=\" text-decoration-color: #CC0000; background-color: bisque;font-weight: bolder;font-size: xx-large; height: 15%\"><a href=\"/chat/home.jsp\">Welcome to UNIBOT</a> </div>\n");
      out.write("<br/><br/><br/><br/>\n");
      out.write("<div align=\"center\">\n");
      out.write("    <ul>\n");
      out.write("       <li><a href=\"main.jsp\">Main</a></li>\n");
      out.write("        <li><a href=\"dept.jsp\">Department</a></li>\n");
      out.write("        <li><a href=\"hostel.jsp\">Hostel</a></li>\n");
      out.write("        <li><a href=\"admission.jsp\">Admission</a></li>\n");
      out.write("        <li><a href=\"five_fold.jsp\">Five Fold</a></li>\n");
      out.write("        <li><a href=\"placement.jsp\">Placement</a></li>\n");
      out.write("        <li><a href=\"location.jsp\">Location</a></li>\n");
      out.write("        <li><a href=\"feedback_mail.jsp\">Feedback Mails </a></li>\n");
      out.write("        <li><a href=\"change_password.jsp\">Change Password </a></li>\n");
      out.write("        <li><a href=\"logout.jsp\">Logout </a></li>\n");
      out.write("    </ul>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("        ");

         Class.forName("com.mysql.jdbc.Driver"); 
         java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chatterbot","root","anu30@radha");  
         
         java.sql.Statement stm= con.createStatement(); 
         ResultSet rs=stm.executeQuery("select * from chatterbot.main_table"); 
        
        
      out.write("\n");
      out.write("        <br/><br/><br/><br/>\n");
      out.write("        <table border='1px' cellpadding='10px' cellspacing='5px' style='background-color: #fffcf6' >\n");
      out.write("            <tr>\n");
      out.write("                <th>ID</th>\n");
      out.write("                <th>Table Name</th>\n");
      out.write("                <th>Keywords</th>\n");
      out.write("                <th>Answer Table</th>\n");
      out.write("                <th>Edit</th>\n");
      out.write("                <th>Delete</th>\n");
      out.write("            </tr>\n");
      out.write("            ");

            while(rs.next())
                               {
                                 int id1=rs.getInt(1);
                                 String table_name=rs.getString("table_name");
                                 String keywords=rs.getString("keywords");
                                 String ans_table=rs.getString("ans_table");
                               
            
      out.write("\n");
      out.write("                                 <tr>\n");
      out.write("                                     <td>\n");
      out.write("                                         ");
out.println(id1);
      out.write("\n");
      out.write("                                     </td>\n");
      out.write("                                     <td>\n");
      out.write("                                         ");
out.println(table_name);
      out.write("\n");
      out.write("                                     </td>\n");
      out.write("                                     <td>\n");
      out.write("                                         ");
out.println(keywords);
      out.write("\n");
      out.write("                                     </td>\n");
      out.write("                                     <td>\n");
      out.write("                                         ");
out.println(ans_table);
      out.write("\n");
      out.write("                                     </td>\n");
      out.write("                                     <td>\n");
      out.write("                                         <a href=\"edit.jsp\">EDIT</a>\n");
      out.write("                                     </td>\n");
      out.write("                                     <td>\n");
      out.write("                                         <a href=\"del.jsp\" >DELETE</a>\n");
      out.write("                                     </td>\n");
      out.write("                                     <td>\n");
      out.write("                                         <input type=\"hidden\" name=\"id\" value=");
      out.print(id1);
      out.write(" />\n");
      out.write("                                     </td>\n");
      out.write("                                 </tr>\n");
      out.write("                                \n");
      out.write("                              ");
 }
                        
            
      out.write("\n");
      out.write("            \n");
      out.write("        </table>\n");
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
