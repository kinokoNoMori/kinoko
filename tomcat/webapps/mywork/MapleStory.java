import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class MapleStory extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws IOException, ServletException {
            
            String title = "メイプルストーリー";
            request.setAttribute("name", title);
            request.setAttribute("message", "この時代に"+title + "やってるって・・・");
    
            String view = "/WEB-INF/views/maple.jsp";
            RequestDispatcher dispatcher = request.getRequestDispatcher(view);
            dispatcher.forward(request, response);
        
    }
}