import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ResultMemo extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        
        request.setAttribute("message", "書き込みました");
        
        String article = request.getParameter("article");
        request.setAttribute("article", article);
        
        String month = request.getParameter("month");
        if (month.equals(""))month="不明";
        request.setAttribute("month", month);
        
        String day = request.getParameter("day");
        if (day.equals(""))day="不明";
        request.setAttribute("day", day);
        
        String time = request.getParameter("time");
        if (time.equals(""))time="不明";
        request.setAttribute("time", time);
        
        
        File file = new File(getServletContext().getRealPath("amemo.txt"));
        FileWriter filewriter = new FileWriter(file, true);
        String[] alphabet = {
            "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t",
            "u","v","w","x","y","z",
            "za","zb","zc","zd","ze","zf","zg","zh","zi","zj",//10
            "zk","zl","zm","zn","zo","zp","zq","zr","zs","zt",//10
            "zu","zv","zw","zx","zy","zz","zq","zr","zs","zt","zzz"//11
            };
        //文字列変数名.substring(開始文字のインデックス, 文字列変数名.length()); 
        
        if(month.equals("1")){
            month = 0 + month;
        }else if(month.equals("2")){
            month = 0 + month;
        }else if(month.equals("3")){
            month = 0 + month;
        }else if(month.equals("4")){
            month = 0 + month;
        }else if(month.equals("5")){
            month = 0 + month;
        }else if(month.equals("6")){
            month = 0 + month;
        }else if(month.equals("7")){
            month = 0 + month;
        }else if(month.equals("8")){
            month = 0 + month;
        }else if(month.equals("9")){
            month = 0 + month;
        }else{
            
        }
        
        if(day.equals("1")){
            day = 0 + day;
        }else if(day.equals("2")){
            day = 0 + day;
        }else if(day.equals("3")){
            day = 0 + day;
        }else if(day.equals("4")){
            day = 0 + day;
        }else if(day.equals("5")){
            day = 0 + day;
        }else if(day.equals("6")){
            day = 0 + day;
        }else if(day.equals("7")){
            day = 0 + day;
        }else if(day.equals("8")){
            day = 0 + day;
        }else if(day.equals("9")){
            day = 0 + day;
        }else{
            
        }
        
        filewriter.write(month + "/" + day + "/" + time +"," + article + System.getProperty("line.separator"));
        filewriter.close();


        
        String view = "/WEB-INF/views/memoresult.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
    }
}