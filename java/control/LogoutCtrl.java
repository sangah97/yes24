package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LogoutCtrl")
public class LogoutCtrl extends HttpServlet {

	// doGet
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	// doPost
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}
	
	// doGetPost
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글처리
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
		session.setMaxInactiveInterval(0);
		session.invalidate();		

		response.sendRedirect("index.jsp");
	}

}
