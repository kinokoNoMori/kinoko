import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Ztemp extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws IOException, ServletException {
    
    // Html表示
        //内容
        String cont1 = subtitleGet("サブタイ","内容1");
        String cont2 = subtitleGet("サブタイ","内容2");
        String nakami = titleGet("タイトル") + cont1 + cont2;

        //最上下にあるこのページまでのリンク        
        String[] pages = {"総合トップ"};
        String[] links = {"top"};
        String now = menuGet("今のページ", pages, links);
        
        //タブの名前
        String tabName = "タブの名前";
        
        
        // 出力関連
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        //出力
        String HTML = htmlGet(tabName, now, nakami); 
        out.println(HTML);
    }
    
    //メソッド集
    
    public String titleGet(String t) {
        String main_title = t;
        String maintitle = "<a name=top></a>"
        +"<h1 style=\"color: #364e96; padding: 0.5em 0; "
        +"border-top: solid 3px #364e96; border-bottom: solid 3px #364e96;\">"
        +main_title 
        + "</h1>";
        return maintitle;
    }
    
    public String subtitleGet(String t, String cont) {
        String sub_title = t;
        String contents = cont;
        String place = "<a name="+sub_title+"></a>";
        String gototop = "<a href=\"#top\">~このページの最上部</a>"; 
        String subtitle = place
            +"<h2 style =\"background: linear-gradient(transparent 70%, #a7d6ff 70%);\">"
            +sub_title
            +"</h2>"
            +contents
            +"<br>"
            +gototop;
        return subtitle;
    }
    
    public String menuGet(String nowpage, String[] pages, String[] links) {
        String pad = "padding: 0.5em;";//文字周りの色
        String color = "color: #494949;";
        String background = "background: #fffaf4;";
        String border_left = "border-left: solid 5px #ffaf58;";
        String mypage = nowpage;//表示してるページ名
        String linktag = "";
        for (int i = 0; i<pages.length;i++){
            linktag += "<a href=\"" + links[i] + "\">" + pages[i] + "</a><a>＞</a>";
        }
        
        String top_buttom_menu_tag = "<p style=\""
            +pad+color+background+border_left
            +"\">"
            +linktag
            +"<a>"
            +mypage
            +"</a></p>";
        return top_buttom_menu_tag;
    }
    
    public String htmlGet(String t, String now, String cont) {
        //t::::タブのところの文字
        //now::現在のページ
        //cont:内容
        String head = "<html><head><title>"+t+"</title></head>";
        String body = "<body style=\"background:#ffffff\">"+now//最上部
            +cont
            +"<br>"
            +now
            +"</body></html>";//最下部
        return head+body;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
