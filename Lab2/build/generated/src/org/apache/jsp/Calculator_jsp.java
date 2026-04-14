package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Calculator_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<head>\n");
      out.write("    <title>Calculator</title>\n");
      out.write("</head>\n");
      out.write("<body bgcolor=\"#87CEEB\">\n");
      out.write("\n");
      out.write("<center>\n");
      out.write("<h2>Basic Calculator</h2>\n");
      out.write("\n");
      out.write("<form method=\"get\">\n");
      out.write("    <input type=\"text\" name=\"operand1\" value=\"\" />\n");
      out.write("\n");
      out.write("    <select name=\"op\">\n");
      out.write("        <option value=\"0\">+</option>\n");
      out.write("        <option value=\"1\">-</option>\n");
      out.write("        <option value=\"2\">*</option>\n");
      out.write("        <option value=\"3\">/</option>\n");
      out.write("        <option value=\"4\">%</option>\n");
      out.write("    </select>\n");
      out.write("\n");
      out.write("    <input type=\"text\" name=\"operand2\" value=\"\" /><br><br>\n");
      out.write("\n");
      out.write("    <input type=\"submit\" value=\"Calculate\">\n");
      out.write("</form>\n");
      out.write("\n");

String num1 = request.getParameter("operand1");
String num2 = request.getParameter("operand2");
String op = request.getParameter("op");

int result = 0;

if (num1 != null && num2 != null && op != null) {
    int n1 = Integer.parseInt(num1);
    int n2 = Integer.parseInt(num2);

    switch(op) {
        case "0": result = n1 + n2; break;
        case "1": result = n1 - n2; break;
        case "2": result = n1 * n2; break;
        case "3": result = n1 / n2; break;
        case "4": result = n1 % n2; break;
    }

      out.write("\n");
      out.write("\n");
      out.write("<h3>Result: ");
      out.print( result );
      out.write("</h3>\n");
      out.write("\n");

}

      out.write("\n");
      out.write("\n");
      out.write("</center>\n");
      out.write("</body>\n");
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
