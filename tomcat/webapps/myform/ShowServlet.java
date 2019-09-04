import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ShowServlet  extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        setPlayerList(request);
        request.setAttribute("message", "あらたなモンスターがあらわれた！");
        forwardForm(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        setPlayerList(request);
        request.setCharacterEncoding("utf-8");
        String player = request.getParameter("name");
        request.setAttribute("message", player + "は、モンスターと戦った");
        forwardForm(request, response);
    }

    private void setPlayerList(HttpServletRequest request) {
        String playerList = "勇者,戦士,魔法使い,忍者,ロボロボ";
        request.setAttribute("playerList", playerList);
    }

    private void forwardForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String view = "/WEB-INF/views/show.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
    }
}