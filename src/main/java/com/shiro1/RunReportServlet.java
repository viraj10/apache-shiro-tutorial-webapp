package com.shiro1;

import java.io.IOException;  
import java.io.PrintWriter;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

//@RequiresPermissions("subject:reportView")
public class RunReportServlet extends HttpServlet {  
     
	 protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                                throws ServletException, IOException {  
            response.setContentType("text/html");  
            PrintWriter out=response.getWriter();  
            Subject subject = SecurityUtils.getSubject();
            try
			{
				String reportStr = runreport(subject);  
				request.getRequestDispatcher("reportdone.jsp").include(request, response);  
				out.print(reportStr);
			} 
			catch(AuthorizationException  exp)
			{
				request.getRequestDispatcher("error.jsp").include(request, response); 
				out.print(exp.getMessage());
			}
			
            out.close();  
    }  
	//https://shiro.apache.org/java-annotations.html#lend-a-hand-with-documentation
	//@RequiresPermissions("reportView")
	//@RequiresRoles("reportmanager")
	private String runreport(Subject subject)
	{
		return "report ran "+subject.isPermitted("reportView");
	}
	
}  