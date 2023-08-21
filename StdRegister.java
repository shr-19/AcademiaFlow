package student;
import javax.servlet.*;
import javax.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

public class StdRegister extends HttpServlet{
    public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException{
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        String uname=request.getParameter("uname");
        String uemail=request.getParameter("uemail");
        String password=request.getParameter("password");
        Connection con;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/student";
            con=DriverManager.getConnection(url, "root", "shruti@19");
            PreparedStatement ps=con.prepareStatement("insert into register_info values(?,?,?)");
            ps.setString(1, uname);
            ps.setString(2, uemail);
            ps.setString(3, password);
            int p=ps.executeUpdate();
            if(p>0){
                response.sendRedirect("/webfisrt/stdlogin.jsp");
            }
            else{
                out.println("failed to register");
            }

        }catch(Exception e){
            out.println(e);
        }
    }
    
}
