package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberDTO;

@WebServlet("/JoinCtrl")
public class JoinCtrl extends HttpServlet {
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
		// 한글 처리
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		// 폼 데이터 받아서 자바빈에 세팅
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String pass2 = request.getParameter("pass2");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		Date birth = Date.valueOf(request.getParameter("birth")); // birth 자리에 date 써서 오류였음..
		int gender = (request.getParameter("male") != null)?1:2;
		int agr1 = (request.getParameter("agr1") == null)?0:1;
		int agr2 = (request.getParameter("agr2") == null)?0:1;
		int agr3 = (request.getParameter("agr3") == null)?0:1;
		int agr4 = (request.getParameter("agr4") == null)?0:1;
		int agr5 = (request.getParameter("agr5") == null)?0:1;
		
		MemberDTO mem = new MemberDTO();
		mem.setId(id);
		mem.setPassword(password);
		mem.setPass2(pass2);
		mem.setName(name);
		mem.setPhone(phone);
		mem.setEmail(email);
		mem.setBirth(birth);
		mem.setGender(gender);
		mem.setAgr1(agr1);
		mem.setAgr2(agr2);
		mem.setAgr3(agr3);
		mem.setAgr4(agr4);
		mem.setAgr5(agr5);
		
		//  필수약관 안됨
		String home = request.getContextPath(); // Context Path: /Yes24
		// 약관 필수 항목 체크 : require 해제필요
//	    if(agr1+agr2+agr3 != 3) {
//			PrintWriter writer = response.getWriter();
//			writer.println("<script>alert('필수 약관에 동의해 주세요.'); location.href='"+home+"/pages/auth/register.jsp"+"';</script>");
//			writer.close();
//	     }
		// 날짜 선택 유효성 검사 (미래와 현재 선택 불가하도록)
	      java.util.Date birthDay = new java.util.Date();
	      java.util.Date today = new java.util.Date();
	      birthDay = mem.getBirth(); // 폼 데이터(사용자 입력 날짜)
	      System.out.println("birthDay = mem.getBirth(): "+birthDay);
	      int compare = birthDay.compareTo(today); // 두 날짜 비교
	      System.out.println("compare: "+compare);
	      if(compare > 0) { // 현 날짜 또는 이후 날짜
	         PrintWriter writer = response.getWriter();
	         writer.println("<script>alert('생년월일을 다시 확인해 주세요'); location.href='"+home+"/pages/auth/register.jsp"+"';</script>");
	         writer.close();
	         return;
	      } // end of if문
		
		/* 메서드 사용 */
		// 1. 아이디 중복 확인 메서드 사용
		MemberDAO mdao = new MemberDAO();
		int duplicId = mdao.isIdDuplicate(id);
		// 경로 관련 공통 변수 선언
		home = request.getContextPath(); // Context Path: /Yes24
		// 중복 아이디 확인 후 알림 메시지
		if(duplicId != 0) {
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('이미 사용하고 있는 아이디입니다.'); location.href='"+home+"/pages/auth/register.jsp"+"';</script>");
			writer.close();
			return;
		}
		
		// 2. 이메일 중복 확인 메서드 사용
		int duplicEmail = mdao.isEmailDuplicate(email);
		// 중복 이메일 확인 후 알림 메시지
		if(duplicEmail != 0) {
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('이미 사용하고 있는 이메일입니다.'); location.href='"+home+"/pages/auth/register.jsp"+"';</script>");
			writer.close();
			return;
		}
		
		// 3. 회원가입 메서드 사용 
		int check = mdao.addMember(mem);
		// 처리 후 페이지 이동
		if(check != 0) {
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('가입되었습니다.'); location.href='"+home+"/index.jsp"+"';</script>"); 
			writer.close();
		}else {
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('회원 가입에 실패하였습니다.'); location.href='"+home+"/pages/auth/register.jsp"+"';</script>");
			writer.close();
		}
		

	}
}
