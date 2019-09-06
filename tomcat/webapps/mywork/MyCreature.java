import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class MyCreature extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws IOException, ServletException {
        
            // pythonの囲碁のコード
            String Igo = "pythonの囲碁のコード";
            request.setAttribute("igo_py", Igo);
        
            String PiazaIO = "https://paiza.io/ja/projects/new";
            request.setAttribute("IO", PiazaIO);
            
            
            String view = "/WEB-INF/views/mycreature.jsp";
            RequestDispatcher dispatcher = request.getRequestDispatcher(view);
            dispatcher.forward(request, response);
    }
}
