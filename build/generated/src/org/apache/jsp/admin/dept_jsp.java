package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.ResultSet;
import com.mysql.jdbc.Statement;
import java.sql.DriverManager;

public final class dept_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  static {
    _jspx_dependants = new java.util.Vector(1);
    _jspx_dependants.add("/admin/menu.jsp");
  }

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
      out.write("        <title>dept jsp Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"#f0f8ff\">\n");
      out.write("         \n");
      out.write("        ");
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
      out.write("\n");
      out.write("        ");

         Class.forName("com.mysql.jdbc.Driver"); 
         java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chatterbot","root","chatbot");  
         
             java.sql.Statement stm= con.createStatement(); 
         ResultSet rs=stm.executeQuery("select * from chatterbot.dept_ques");
         ResultSet rs1=stm.executeQuery("select * from chatterbot.dept_ans");         
        
        
      out.write("\n");
      out.write("        <br/></br></br></br>\n");
      out.write("        <table border='1px' cellpadding='10px' cellspacing='5px' style='background-color: #fffcf6' >\n");
      out.write("            <tr>\n");
      out.write("                <th>Q_ID</th>\n");
      out.write("                <th>Dept_Ques</th>\n");
      out.write("                <th>EDIT</th>\n");
      out.write("                <th>DELETE</th>\n");
      out.write("                <th>A_ID</th>\n");
      out.write("                <th>Ref_ID</th>\n");
      out.write("                <th>Dept_Ans</th>\n");
      out.write("                <th>EDIT</th>\n");
      out.write("                <th>DELETE</th>\n");
      out.write("            </tr>\n");
      out.write("            ");

            while(rs.next())
                               {
                                 
                                 int id=rs.getInt("dept_id");
                                 String ques=rs.getString("question");
                                 
                               
            
      out.write("\n");
      out.write("                                 <tr>\n");
      out.write("                                     <td>\n");
      out.write("                                         ");
out.println(id);
      out.write("\n");
      out.write("                                     </td>\n");
      out.write("                                     <td>\n");
      out.write("                                         ");
out.println(ques);
      out.write("\n");
      out.write("                                     </td>\n");
      out.write("                                     \n");
      out.write("                                     <td>\n");
      out.write("                                         <a href=\"dqedit.jsp\" >EDIT</a>\n");
      out.write("                                     </td>\n");
      out.write("                                     <td>\n");
      out.write("                                         <a href=\"dqdel.jsp\" >DELETE</a>\n");
      out.write("                                     </td>\n");
      out.write("                                 \n");
      out.write("                              ");
 }
                        while(rs1.next())
                                                       {
                            int a_id=rs1.getInt("id");
                            int ref_id=rs1.getInt("ref_id");
                           String ans=rs1.getString("answer");
                        
            
      out.write("\n");
      out.write("               \n");
      out.write("                                     <td>");
 out.println(a_id);
      out.write("</td>\n");
      out.write("                                     <td>");
 out.println(ref_id);
      out.write("</td>\n");
      out.write("                                     <td>");
 out.println(ans);
      out.write("</td>\n");
      out.write("                                     <td><a href=\"daedit.jsp\" >EDIT</a></td>\n");
      out.write("                                     <td><a href=\"daedit.jsp\" >DELETE</a></td>\n");
      out.write("                                     ");

                                                         }                                     

      out.write("\n");
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
