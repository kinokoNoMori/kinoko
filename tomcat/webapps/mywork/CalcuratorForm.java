import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class CalcuratorForm extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("message", "計算機");
        
        String view = "/WEB-INF/views/calcuratorform.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
    }
}
