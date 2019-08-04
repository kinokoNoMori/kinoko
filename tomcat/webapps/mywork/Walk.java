import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Walk extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws IOException, ServletException{

        String player = "勇者";
        request.setAttribute("name", player);
        request.setAttribute("message", player + "は、荒野を歩いていた。");

        String view = "/WEB-INF/views/action.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
    }
}