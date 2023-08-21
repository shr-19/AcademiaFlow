package student;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class StdAdd extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException{
    response.setContentType("text/html");
    PrintWriter out=response.getWriter();
    int id=Integer.parseInt(request.getParameter("id"));
    String name=request.getParameter("name");
    String course=request.getParameter("courses");
    String dept=request.getParameter("dept");
    String email=request.getParameter("email");
    String contact=request.getParameter("contact");
    Connection con;
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/student";
        con=DriverManager.getConnection(url, "root", "shruti@19");
        PreparedStatement ps=con.prepareStatement("insert into student_info values(?,?,?,?,?,?)");
        ps.setInt(1, id);
        ps.setString(2, name);
        ps.setString(3, course);
        ps.setString(4, dept);
        ps.setString(5, email);
        ps.setString(6, contact);
        int p=ps.executeUpdate();
        if(p>0){
            response.sendRedirect("/webfisrt/stdhome.jsp");
            
        }
        else{
            out.println("Error in registration");
        }
    }catch(Exception e){
        out.println(e);
    }

    }
    
    
}

