// JDBCで、データーベース呼び出し
// Servlet単独

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class SelectSqlServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException {

        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();

        out.println("<html>");
        out.println("<head>");
        out.println("<title>Java - paiza</title>");
        out.println("</head>");
        out.println("<body>");

        out.println("<p>Hello World!</p>");

        out.println("</body>");
        out.println("</html>");
    }
}
