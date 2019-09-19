// JDBCで、データーベース呼び出し
// Servlet単独

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

class Member {
    private int id;
    private String name;
    private int level;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public int getLevel() {
        return level;
    }
    public void setLevel(int setLevel) {
        this.level = level;
    }

    public Member(int id, String name, int level) {
        this.id = id;
        this.name = name;
        this.level = level;
    }
}

public class SelectSqlServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");
        
        /*
        PrintWriter out = response.getWriter();

        out.println("<html>");
        out.println("<head>");
        out.println("<title>Java to sql</title>");
        out.println("</head>");
        out.println("<body>");

        out.println("<p>Hello World!</p>");
        */
        
        String url = "jdbc:mysql://localhost/mydb";
        String user = "root";
        String password = "";
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
        List<Member> memberList = new ArrayList<Member>();
        
        try (Connection connection = DriverManager.getConnection(url, user, password);
            PreparedStatement statment = connection.prepareStatement("SELECT * FROM players");
            ResultSet results = statment.executeQuery()) {
            //out.println("<p>接続成功！</p>");
            
            while (results.next()) {
                int id = results.getInt("id");
                //if(id==null){id=0;}
                String name = results.getString("name");
                if(name==null){name="nanashi";}
                int level = results.getInt("level");
                //if(level==null){level=0;}
                //request.setAttribute("id", id);
                //request.setAttribute("name", name);
                //request.setAttribute("level", level);
                Member member = new Member(id,name,level);
                memberList.add(member);
                // out.println("<p>" + id + ", " + name + ", " + level + "</p>");
            }
        } catch (Exception e) {
            //out.println("Exception" + e.getMessage());
        }
        
        /*
        out.println("</body>");
        out.println("</html>");
        */
        request.setAttribute("members", memberList);
        
        String view = "/WEB-INF/views/show.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);
    }
}