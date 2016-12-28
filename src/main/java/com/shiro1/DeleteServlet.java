package com.shiro1;

import java.io.IOException;  
import java.io.PrintWriter;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
import org.apache.shiro.authz.annotation.RequiresPermissions;

public class DeleteServlet extends HttpServlet {  
     
	 protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                                throws ServletException, IOException {  
            response.setContentType("text/html");  
            PrintWriter out=response.getWriter();  
              
            request.getRequestDispatcher("login.jsp").include(request, response);  
              
            HttpSession session=request.getSession();  
            session.invalidate();  
              
            out.print("deleted");  
              
            out.close();  
    }  
	
	
	
}  