/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.20
 * Generated at: 2019-09-11 07:04:46 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class form_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html\" charset=\"UTF-8\">\r\n");
      out.write("        <title>board</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body style=\"background:#ffffff\">\r\n");
      out.write("        <a name=\"top\"></a>\r\n");
      out.write("        \r\n");
      out.write("        <p style=\"padding: 0.5em;/*文字周りの余白*/\r\n");
      out.write("        color: #494949;/*文字色*/\r\n");
      out.write("        background: #fffaf4;/*背景色*/\r\n");
      out.write("        border-left: solid 5px #ffaf58;/*左線（実線 太さ 色）*/\">\r\n");
      out.write("        <a href=\"top\">総合トップ</a><a>＞</a>\r\n");
      out.write("        <a href=\"mycreature\">作成物</a><a>＞</a>\r\n");
      out.write("        <a>掲示板</a><a>＜</a>\r\n");
      out.write("        <a href=\"mylanguages\">学習した言語ページ</a>\r\n");
      out.write("        <br>\r\n");
      out.write("        <a href=\"#topBoard\">~掲示板の最上段へ</a><br>\r\n");
      out.write("        \r\n");
      out.write("        ");
 String message = (String)request.getAttribute("message");
      out.write("\r\n");
      out.write("        <h1 style=\"color: #364e96; padding: 0.5em 0; border-top: solid 3px #364e96; border-bottom: solid 3px #364e96;\">\r\n");
      out.write("        ");
      out.print( message );
      out.write("</h1>\r\n");
      out.write("        <a name=\"topBoard\"></a>\r\n");
      out.write("        <form action=\"result\" method=\"post\" >\r\n");
      out.write("            <label for=\"name\">名前</label>\r\n");
      out.write("            <input type=\"text\" name=\"userName\">\r\n");
      out.write("            <p></p>\r\n");
      out.write("            <label for=\"article\">投稿</label>\r\n");
      out.write("            <input type=\"text\" name=\"article\">\r\n");
      out.write("            <button type=\"submit\">送信する</button>\r\n");
      out.write("        </form>\r\n");
      out.write("        \r\n");
      out.write("        <p></p>\r\n");
      out.write("        <table border=5; bordercolor=\"#e6e6fa\">\r\n");
      out.write("            <tr><th>名前</th><th>投稿</th></tr>\r\n");
      out.write("            ");
 String articles = request.getAttribute("articles").toString(); 
      out.write("\r\n");
      out.write("            ");
 String[] lines = articles.split("\n", 0); 
      out.write("\r\n");
      out.write("            ");
 for (String line: lines) { 
      out.write("\r\n");
      out.write("                <tr>\r\n");
      out.write("                    ");
 String[] contents = line.split(","); 
      out.write("\r\n");
      out.write("                    ");
 for (String content: contents) { 
      out.write("\r\n");
      out.write("                        <td>");
      out.print( content );
      out.write("\r\n");
      out.write("                        </td>\r\n");
      out.write("                    ");
 } 
      out.write("\r\n");
      out.write("                </tr>\r\n");
      out.write("            ");
 } 
      out.write("\r\n");
      out.write("            \r\n");
      out.write("        </table>\r\n");
      out.write("        <a href=\"#topBoard\">~掲示板の最上段へ</a><br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <p style=\"padding: 0.5em;/*文字周りの余白*/\r\n");
      out.write("        color: #494949;/*文字色*/\r\n");
      out.write("        background: #fffaf4;/*背景色*/\r\n");
      out.write("        border-left: solid 5px #ffaf58;/*左線（実線 太さ 色）*/\"><a href=\"top\">総合トップ</a><a>＞</a>\r\n");
      out.write("        <a href=\"mycreature\">作成物</a><a>＞</a>\r\n");
      out.write("        <a>掲示板</a><a>＜</a>\r\n");
      out.write("        <a href=\"mylanguages\">学習した言語ページ</a></p><br>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
