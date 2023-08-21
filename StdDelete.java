package student;
import javax.servlet.*;
import javax.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

public class StdDelete extends HttpServlet{
    public void service(HttpServletRequest request, HttpServletResponse response)
    throws ServletException,IOException{
        response.setContentType("text/html");
        int id=Integer.parseInt(request.getParameter("id"));
        PrintWriter out=response.getWriter();
        Connection con;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/student";
            con=DriverManager.getConnection(url, "root", "shruti@19");
            PreparedStatement ps=con.prepareStatement("Delete from student_info where id=?");
            ps.setInt(1, id);
            int p=ps.executeUpdate();
            if(p>0){
                response.sendRedirect("/webfisrt/stdview.jsp");
            }
            else{
                out.println("Failed to delete");
            }
        }catch(Exception e){
            out.println(e);
        }
      


    }
    
}
