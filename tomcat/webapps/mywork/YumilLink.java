import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Ztemp extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws IOException, ServletException {
            
            String title = "自己紹介";
            request.setAttribute("name", title);
            
            
            
            
            
        // Html表示
        String pad = "padding: 0.5em;";//文字周りの色
        String color = "color: #494949;";
        String background = "background: #fffaf4;";
        String border-left = "border-left: solid 5px #ffaf58;";
        String mypage = "nowpage";
        
        String tag_top = "<p style=\""+pad+color+background+border-left+"\">"+
        "<a href=\"top\">総合トップ</a><a>＞</a>"+
        "<a href=\"selfintroduction\">自己紹介トップ</a><a>＞</a>"+
        "<a>"+mypage+"</a>";
        
        // 出力

        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();

        out.println("<html>");
        out.println("<head>");
        out.println("<title>Java to sql</title>");
        out.println("</head>");
        out.println("<body>");
        out.println(tag_top);
        out.println("<p>Hello World!</p>");

        
        out.println("</body>");
        out.println("</html>");
    }
}
