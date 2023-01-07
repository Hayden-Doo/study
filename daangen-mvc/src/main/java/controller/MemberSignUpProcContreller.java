package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import dao.MemberDaoImpl;
import service.MemberService;
import service.MemberServiceImpl;
import vo.MemberVo;

public class MemberSignUpProcContreller extends HttpServlet{
	
	private MemberService memberService = null;
	
	// 기본 생성자
	public MemberSignUpProcContreller() {
		this.memberService = MemberServiceImpl.getMemberService();
		System.out.println("MemberSignUpController 생성");
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		// 1. 사용자 입력값 받습니다.
		String userEmail = request.getParameter("userName");
		String userName = request.getParameter("userName");
		String userPwd = request.getParameter("userPwd");
		String userPwdConfirm = request.getParameter("userPwdConfirm");
		
		// 2. vo 객체 생성
		MemberVo member = new MemberVo();
		member.setUserEmail(userEmail);
		member.setUserName(userName);
		member.setUserPwd(userPwd);
		
		// 3. Service 실행 
		Map<String, Object> result = memberService.registUser(member);
		
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.println("<script>");
		out.println("alert('" + result.get("message") + "')");
		
		// 가입 실패 때
		if(result.get("result").toString().equals("false")) {
			out.println("history.back();");
		}else { // 가입 성공 때 
			out.println("location.href='/signin.jsp';");
		}

		out.println("</script>");
		out.flush();
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
	
	}
}
