import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class BoardServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        StringBuilder boards = new StringBuilder();
        File file = new File(getServletContext().getRealPath("boards.txt"));
        Scanner scan = new Scanner(file);

        while(scan.hasNext()){
            String line = scan.nextLine();
            boards.append(line).append(System.getProperty("line.separator"));
        }
        
        
            
        request.setAttribute("board", boards);

        String view = "/WEB-INF/views/board.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
    }
}