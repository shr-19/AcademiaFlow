package student;
import javax.servlet.*;
import javax.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

public class StdLogin extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException,IOException{
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
         String uemail=request.getParameter("uemail");
        String password=request.getParameter("password");
        Connection con;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","shruti@19");
            Statement stmt=con.createStatement();
            String sql="select * from register_info where email='"+uemail+"'&&password='"+password+"'";
            ResultSet rs=stmt.executeQuery(sql);
            while(rs.next()){
                Cookie c = new Cookie("uemail", uemail);
                 response.addCookie(c);
                response.sendRedirect("/webfisrt/stdhome.jsp");
            }
           
        }catch(Exception e){
            out.println(e);
        }
    }
    
}
