package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	/* 커넥션 풀 사용 */
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	// 1. 커넥션풀
	public void dbConn() {
		try {
			Context initctx = new InitialContext(); // server.xml <Context> 설정과 관련
	         System.out.println("1. Context 생성 성공!!");
	         Context envctx = (Context) initctx.lookup("java:comp/env"); // lookup() 사용환경 찾기
	         System.out.println("2. Context 환경생성 성공!!");
	         DataSource ds = (DataSource) envctx.lookup("jdbc/pool"); // lookup() Resource 찾기
	         System.out.println("3. DataSource 찾기 성공!!");
	         conn = ds.getConnection();
	         System.out.println("4. DB접속 성공!!");
		} catch (Exception e) {
			e.printStackTrace();
		}
	} // end of dbConn
	
	// 2. 중복 아이디 조회 메서드
	public int isIdDuplicate(String id) {
		int duplicId = 0; // int는 무조건 초기값이 0으로 세팅되어야 함!
		try {
			dbConn();
			String sql = "select * from member where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				duplicId = 1;
			}else {
				duplicId = 0;
			}
			pstmt.close();
			rs.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return duplicId;
	} // end of isIdDuplicate

	// 3. 중복 이메일 조회 메서드
	public int isEmailDuplicate(String email) {
		int duplicEmail = 0; // int는 무조건 초기값이 0으로 세팅되어야 함!
		try {
			dbConn();
			String sql = "select * from member where email=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				duplicEmail = 1;
			}else {
				duplicEmail = 0;
			}
			pstmt.close();
			rs.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return duplicEmail;
	} // end of isEmailDuplicate
	
	// 4. 회원 가입 메서드 = 사용자가 폼에 입력한 동적 데이터를 DB에 차례대로 넣는 메서드
	public int addMember(MemberDTO mem) {
		int check = 0;
		try {
			dbConn();
			String sql = "insert into member(id, password, regdate, name, phone, email, birth, gender, agr1, agr2, agr3, agr4, agr5) values(?,?,sysdate,?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem.getId());
			pstmt.setString(2, mem.getPassword());
			pstmt.setString(3, mem.getName());
			pstmt.setString(4, mem.getPhone());
			pstmt.setString(5, mem.getEmail());
			pstmt.setDate(6, mem.getBirth());
			pstmt.setInt(7, mem.getGender());
			pstmt.setInt(8, mem.getAgr1());
			pstmt.setInt(9, mem.getAgr2());
			pstmt.setInt(10, mem.getAgr3());
			pstmt.setInt(11, mem.getAgr4());
			pstmt.setInt(12, mem.getAgr5());
			check = pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return check;
	} // end of addMember
	
	// 5. 로그인
		public int getMember(String id, String password) {
			int result = 0;
			dbConn();
			try {
				String sql = "select count(*) from member where id = ? and password = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.setString(2, password);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					result = rs.getInt(1);
				}
				rs.close();
				pstmt.close();
				conn.close();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return result;
		} // end of getMember
		
	// 6. 로그아웃
		

	// 7. 이름가져오기(새글쓰기)
	public String getName(String id) {
		dbConn();
		String name = "";
		try {
			String sql = "select name from member where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				name = rs.getString(1);
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return name;
	} //end of getName
	
//	// 8. 필수약관 체크
//	public int reqArg(int agr1, int agr2, int agr3) {
//		int result = 0;
//		
//		
//		return result;
//	}// end of reqArg
	
} // end of class
