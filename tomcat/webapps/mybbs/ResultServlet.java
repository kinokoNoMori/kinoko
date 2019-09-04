import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ResultServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        
        String article = request.getParameter("article");
        String userName = request.getParameter("userName");
        request.setAttribute("message", "投稿しました！");
        request.setAttribute("article", article);
        request.setAttribute("userName", userName);
        

        File file = new File(getServletContext().getRealPath("articles.txt"));
        FileWriter filewriter = new FileWriter(file, true);

        filewriter.write(article + "," + userName + System.getProperty("line.separator"));
        filewriter.close();


        
        String view = "/WEB-INF/views/result.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
    }
}