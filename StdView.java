package student;
import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.*;

public class StdView extends HttpServlet {

    public StdView(){
        super();
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException,IOException{
        request.getRequestDispatcher("/webfisrt/stdview.jsp").forward(request,response);

    }
    
}
