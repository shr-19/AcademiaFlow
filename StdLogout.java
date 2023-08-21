package student;
import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.*;

public class StdLogout extends HttpServlet {
    public void service(HttpServletRequest request, HttpServletResponse response)
    throws ServletException,IOException{
        Cookie c = new Cookie("uemail", "");
        c.setMaxAge(0);
        response.addCookie(c);
        response.sendRedirect("/webfisrt/stdhome.jsp");

    }
    
}
