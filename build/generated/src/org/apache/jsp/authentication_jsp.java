package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class authentication_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Authentication Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"styleotp.css\">\n");
      out.write("          <script src=\"https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js\"></script>\n");
      out.write("  <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js\"></script>\n");
      out.write("  <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("     \n");
      out.write("  <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css\" integrity=\"sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==\" crossorigin=\"anonymous\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <section>\n");
      out.write("    \n");
      out.write("        <div class = \"contact-bg\">\n");
      out.write("        <h2>VERIFICATION</h2>\n");
      out.write("        <div class = \"line\">\n");
      out.write("          <div></div>\n");
      out.write("          <div></div>\n");
      out.write("          <div></div>\n");
      out.write("        </div>\n");
      out.write("        <p class = \"text\">Please enter below the verification code sent to your email!</p>\n");
      out.write("      </div>\n");
      out.write("            </section>\n");
      out.write("   \n");
      out.write("        \n");
      out.write("         <form action=\"VerifyCodeServlet.do\" method=\"POST\">\n");
      out.write("            <input maxlength='7' value='' name=\"authcode\" id=\"code\">\n");
      out.write("            <a href=\"#\"><button style=\"background-image: linear-gradient(\n");
      out.write("    120deg,\n");
      out.write("    hsl(192, 70%, 51%),\n");
      out.write("    hsl(136, 65%, 51%))\"   class=\"btn\">Submit</button></a>    \n");
      out.write("        </form>\n");
      out.write("         \n");
      out.write("         \n");
      out.write("<script src=\"//cdnjs.cloudflare.com/ajax/libs/annyang/2.6.0/annyang.min.js\"></script>\n");
      out.write("<script>\n");
      out.write("    if (annyang) {\n");
      out.write("        \n");
      out.write("        console.log(\"it working!\");\n");
      out.write("        \n");
      out.write("       \n");
      out.write("      // Let's define our first command. First the text we expect, and then the function it should call\n");
      out.write("      let commands = {\n");
      out.write("       \n");
      out.write("        'write pin *tag': function(variable){\n");
      out.write("            let pin = document.getElementById(\"code\");\n");
      out.write("            pin.value = variable.split(\" \").join(\"\"); \n");
      out.write("        }\n");
      out.write("      };\n");
      out.write("    \n");
      out.write("      // Add our commands to annyang\n");
      out.write("      annyang.addCommands(commands);\n");
      out.write("      \n");
      out.write("      // Start listening. You can call this here, or attach this call to an event, button, etc.\n");
      out.write("      annyang.start();\n");
      out.write("      \n");
      out.write("      \n");
      out.write("    }\n");
      out.write("    </script>\n");
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
