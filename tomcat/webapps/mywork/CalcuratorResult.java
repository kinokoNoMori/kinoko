import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class CalcuratorResult extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        
        request.setAttribute("message", "計算結果を表示します");
        
        String x = request.getParameter("x");
        request.setAttribute("x", x);
        String y = request.getParameter("y");
        request.setAttribute("y", y);
        
        String ope = request.getParameter("operator");
        request.setAttribute("operator", ope);

        String view = "/WEB-INF/views/calcuratorresult.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
    }
}