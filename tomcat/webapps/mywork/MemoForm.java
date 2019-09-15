import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class MemoForm extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String p = "<p style=\"padding: 0.5em;"+
        "color: #494949;"+
        "background: #fffaf4;"+
        "border-left: solid 5px #ffaf58;\">"+
        "<a href=\"top\">総合トップ</a><a>＞</a>"+
        "<a href=\"mycreature\">作成物</a><a>＞</a>"+
        "<a>メモ</a><a>＜</a>"+
        "<a href=\"mylanguages\">学習した言語ページ</a>"+
        "<br>"+
        "<a href=\"#topBoard\">~メモの最上段へ</a><br>";
        request.setAttribute("tag", p);
        
        StringBuilder articles = new StringBuilder();
        File file = new File(getServletContext().getRealPath("amemo.txt"));
        Scanner scan = new Scanner(file);

        while(scan.hasNext()){
            String line = scan.nextLine();
            articles.append(line).append(System.getProperty("line.separator"));
        }

        request.setAttribute("articles", articles);
        request.setAttribute("message", "メモ帳");
        
        String view = "/WEB-INF/views/memoform.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
    }
}
