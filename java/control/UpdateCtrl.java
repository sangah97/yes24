package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.BoardQnaDAO;
import model.BoardQnaDTO;
import model.MemberDAO;


@WebServlet("/UpdateCtrl")
public class UpdateCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}
	
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
	
		HttpSession session = request.getSession();
		String home = request.getContextPath();
		String id = (String)session.getAttribute("id");
		if(id == null) {
			response.sendRedirect("./pages/auth/login.jsp");
		}
		int num = Integer.parseInt(request.getParameter("num"));
		String action = (request.getParameter("action") != null) ? request.getParameter("action"): "write";
		BoardQnaDTO bean = null;
		
		BoardQnaDAO dao = new BoardQnaDAO();
		if(action.equals("update")) {
			String title = request.getParameter("title");
			String type = request.getParameter("type");
			String content = request.getParameter("content");
			
			bean = new BoardQnaDTO();
			bean.setNum(num);
			bean.setTitle(title);
			bean.setType(type);
			bean.setContent(content);
			int result = dao.updateBoard(bean);
			if(result == 1) {
				response.sendRedirect("./BoardListCtrl");
			}else {
				PrintWriter out = response.getWriter();
				out.println("<script>alert('Update Fail'); history.back()</script>");
			}
		}else {
			bean = dao.getOneBoard(num);
			
			if(bean != null) {
				request.setAttribute("bean",bean);
				//response.sendRedirect("./pages/board/boardWrite.jsp");
				RequestDispatcher dis = request.getRequestDispatcher("./pages/board/boardWrite.jsp");
				dis.forward(request, response);
			}else {
				response.sendRedirect("./BoardListCtrl");
			}
		}
		
		
		
		
		
	}

}
