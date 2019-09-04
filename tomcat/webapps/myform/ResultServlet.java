import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ResultServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("message", "Thank you!");

        request.setCharacterEncoding("utf-8");

        String article = request.getParameter("article");
        request.setAttribute("article", article);

        String userName = request.getParameter("userName");
        request.setAttribute("userName", userName);
        
        String view = "/WEB-INF/views/result.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);

    }
    
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("message", "Hello get!");
        
        String article = request.getParameter("article");
        request.setAttribute("article", article);

        String userName = request.getParameter("userName");
        request.setAttribute("userName", userName);
        
        String view = "/WEB-INF/views/result.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);

    }
}