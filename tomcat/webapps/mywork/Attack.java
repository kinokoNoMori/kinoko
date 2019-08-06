import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Battle extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws IOException, ServletException{

        String player = "運営";
        request.setAttribute("name", player);
        request.setAttribute("message", player + "は、ハードウィルに攻撃した。");

        String view = "/WEB-INF/views/action.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
    }
}