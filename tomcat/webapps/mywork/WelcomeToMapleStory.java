import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class WelcomeToMapleStory extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws IOException, ServletException {

            response.setContentType("text/html");
            PrintWriter out = response.getWriter();

            out.println("<html><head>MapelStory</head><body>");
            out.println("<p>welcome to MapleWorld!</p>");
            out.println("</body></html>");
    }
}