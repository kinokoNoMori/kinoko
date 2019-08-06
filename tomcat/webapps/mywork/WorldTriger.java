import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class WorldTriger extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws IOException, ServletException{

        String title = "ワールドトリガー";
        request.setAttribute("name", title);
        request.setAttribute("message", title + "を読んだ");

        String view = "/WEB-INF/views/worldtriger.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
    }
}