package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class insufficientamount_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Insufficient Amount Page</title>\n");
      out.write("          \n");
      out.write("        <style>\n");
      out.write(".alert {\n");
      out.write("  padding: 20px;\n");
      out.write("  background-color: #f44336;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".closebtn {\n");
      out.write("  margin-left: 15px;\n");
      out.write("  color: white;\n");
      out.write("  font-weight: bold;\n");
      out.write("  float: right;\n");
      out.write("  font-size: 22px;\n");
      out.write("  line-height: 20px;\n");
      out.write("  cursor: pointer;\n");
      out.write("  transition: 0.3s;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".closebtn:hover {\n");
      out.write("  color: black;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Insufficient Amount!</h1>\n");
      out.write("\n");
      out.write("<p>Click on the \"x\" symbol to close the alert message.</p>\n");
      out.write("<div class=\"alert\">\n");
      out.write("  <span class=\"closebtn\" onclick=\"this.parentElement.style.display='none';\">&times;</span> \n");
      out.write("  <strong>Warning!</strong> Insufficient amount!!! Please enter a valid amount.\n");
      out.write("</div>\n");
      out.write("<button style=\"background-color: greenyelllow\"><a href=\"transfer.jsp\">[Back]</a></button>\n");
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
