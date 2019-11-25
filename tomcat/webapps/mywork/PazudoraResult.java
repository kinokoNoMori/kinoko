import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class PazudoraResult extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        
        request.setAttribute("message", "計算結果を表示します");
        
        String Now = request.getParameter("now");
        request.setAttribute("now", Now);
        String Req = request.getParameter("req");
        request.setAttribute("req", Req);
        String Heal = request.getParameter("heal");
        request.setAttribute("heal", Heal);
        
        String view = "/WEB-INF/views/pazudoraresult.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
    }
}