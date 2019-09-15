import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class FormServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        StringBuilder articles = new StringBuilder();
        File file = new File(getServletContext().getRealPath("articles.txt"));
        Scanner scan = new Scanner(file);

        while(scan.hasNext()){
            String line = scan.nextLine();
            articles.append(line).append(System.getProperty("line.separator"));
        }

        request.setAttribute("articles", articles);
        request.setAttribute("message", "掲示板");
        
        String view = "/WEB-INF/views/form.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
    }
}
