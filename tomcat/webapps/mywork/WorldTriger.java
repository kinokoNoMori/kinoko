import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class WorldTriger extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws IOException, ServletException{
        String br = System.getProperty("line.separator");
        String title = "ワールドトリガー";
        request.setAttribute("name", title);
        
        //String info[] = {"連載誌" , "作者", "ジャンル"};
        String info[] = {"JumpSQ" , "葦原大介", "SF"};
        request.setAttribute("serial", info[0]);
        request.setAttribute("author", info[1]);
        request.setAttribute("genre", info[2]);
        
        String arasuzi = "28万人が住む三門市に、ある日突然異世界への「門（ゲート）」が開いた。<br>"+
        "門からは「近界民（ネイバー）」と呼ばれる怪物が現れ、<br>"+
        "地球上の兵器が効かない怪物達の侵攻に誰もが恐怖したが、謎の一団が現れ近界民を撃退する。<br>"+
        "一団は界境防衛機関「ボーダー」を名乗り、近界民に対する防衛体制を整えた。<br>"+
        "結果、依然として門からは近界民が出現するにも関わらず、三門市の人々は今日も普通の生活を続けていた。<br>"+
        "門が初めて開いてから4年半が経過し、三門市にやってきた空閑遊真が、三雲修に出会う所から物語は始まる。";
        System.out.println(arasuzi);
        request.setAttribute("synopsis", arasuzi);
        
        String kanso = "<p1>第一部:邂逅編<p2><br>"+
        "第１章感想。<br><br>"+
        "<p1>第2部:黒トリガー争奪編<p2><br>"+
        "第2章。<br><br>";
        request.setAttribute("message", kanso);

        String view = "/WEB-INF/views/worldtriger.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
    }
}

















































