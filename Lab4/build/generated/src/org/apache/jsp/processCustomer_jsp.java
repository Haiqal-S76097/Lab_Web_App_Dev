package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class processCustomer_jsp extends org.apache.jasper.runtime.HttpJspBase
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

final double price = 10.0;

String cust_no = request.getParameter("customerCode");
String cust_type = request.getParameter("customerType");

int quantity = 0;
try {
    quantity = Integer.parseInt(request.getParameter("quantity"));
} catch (Exception e) {
    quantity = 0;
}

double total = 0;
String message = "";

if (cust_type.equals("1") && quantity > 100) {
    message = "You're entitled to 10% discount";
    total = quantity * price * 0.9;
} else if (cust_type.equals("2") && quantity > 100) {
    message = "You're entitled to 25% discount";
    total = quantity * price * 0.75;
} else {
    message = "No discount";
    total = quantity * price;
}

String custTypeDisplay = cust_type.equals("1") ?
"Normal Customer" : "Privilege Customer";

      out.write("\n");
      out.write("\n");
      out.write("<h2>Result</h2>\n");
      out.write("<p>Customer Code: ");
      out.print( cust_no );
      out.write("</p>\n");
      out.write("<p>Customer Type: ");
      out.print( custTypeDisplay );
      out.write("</p>\n");
      out.write("<p>Quantity: ");
      out.print( quantity );
      out.write("</p>\n");
      out.write("<p>");
      out.print( message );
      out.write("</p>\n");
      out.write("<p>Total: RM ");
      out.print( total );
      out.write("</p>");
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
