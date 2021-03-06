package com.result;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.result.authentication.Authentication;

/**
 * Servlet implementation class OfficeLogin
 */
@WebServlet("/OfficeLogin")
public class OfficeLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OfficeLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		
		String userName=request.getParameter("user_name");
		String password=request.getParameter("password");
		//String user=request.getParameter("");
		

		ServletContext sc=getServletContext();
		Connection con=(Connection)sc.getAttribute("Connection");
					
		Authentication a=new Authentication();			
		
		boolean login=a.getAuthenticationOffice(userName,password,con);
		
		if(login){
			
			RequestDispatcher rd=request.getRequestDispatcher("Office/office.jsp");
			rd.forward(request, response);
		}
		else{
			pw.println("<html><body>");
		    pw.println("<script type=\"text/javascript\">");
		    pw.println("if(!alert('Wrong user name or password'))");
		    pw.println("document.location = 'http://localhost:8081/StudentResult/Office/login.html';");
		    pw.println("</script>");
		    pw.println("</body></html>");
			
		}
			
		
		
	
	}

}
