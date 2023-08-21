package student;
import javax.servlet.*;
import javax.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

public class StdUpdateData extends HttpServlet {
    
    public StdUpdateData(){
        super();
    }

    public void doPost(HttpServletRequest request,HttpServletResponse response)
    throws ServletException,IOException{
        PrintWriter out=response.getWriter();
        int id=Integer.parseInt(request.getParameter("id"));
        String n=request.getParameter("name");
        String crs=request.getParameter("courses");
        String d=request.getParameter("dept");
        String e=request.getParameter("email");
        String c=request.getParameter("contact");

        Connection con;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/student";
            con=DriverManager.getConnection(url, "root", "shruti@19");
            PreparedStatement ps=con.prepareStatement("update student_info set name=?,course=?,department=?,email=?,contact=? where id=?");
            ps.setString(1, n);
            ps.setString(2, crs);
            ps.setString(3, d);
            ps.setString(4, e);
            ps.setString(5, c);
            ps.setInt(6, id);
            int p=ps.executeUpdate();
            if(p>0){
                getServletContext().getRequestDispatcher("/stdhome.jsp").include(request,response);
            }
            else{
                out.println("failed to update");
            }
        }catch(Exception exc){
            out.println(exc);
        }
    }
    
}
