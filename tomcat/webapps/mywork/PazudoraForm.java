import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class PazudoraForm extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String p = "<p style=\"padding: 0.5em;"+
        "color: #494949;"+
        "background: #fffaf4;"+
        "border-left: solid 5px #ffaf58;\">"+
        "<a href=\"top\">総合トップ</a><a>＞</a>"+
        "<a href=\"mycreature\">作成物</a><a>＞</a>"+
        "<a>メモ</a><br>"+
        "<br>";
        request.setAttribute("tag", p);
        
        //request.setAttribute("articles", "");
        request.setAttribute("message", "スタミナ計算");
        
        String view = "/WEB-INF/views/pazudoraform.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
    }
}
