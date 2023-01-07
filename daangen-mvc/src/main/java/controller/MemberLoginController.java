package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.MemberService;
import service.MemberServiceImpl;
import vo.MemberVo;

// 로그인 화면 
public class MemberLoginController extends HttpServlet{
	
	private MemberService memberService = null;
	
	public MemberLoginController() {
		this.memberService = MemberServiceImpl.getMemberService();
	}
	
	// 로그인 DB 처리
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		System.out.println("로그인 DB처리");
		String userEmail = request.getParameter("userEmail");
		String userPwd = request.getParameter("userPwd");

		MemberVo member = new MemberVo();
		member.setUserEmail(userEmail);
		member.setUserPwd(userPwd);
		
		Map<String, Object> result = memberService.loginUser(member);
		
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.println("<script>");
		out.println("alert('" + result.get("message") + "')");
		
		
		if ((boolean)result.get("result").toString().equals("true")) { //로그인 성공
			// 로그인 설공 -> 서버 세션 써주기
			HttpSession session = request.getSession();
			// session.setAttribute("sess_member", (MemberVo)result.get("resultObject")); 아래와 같은 
			session.setAttribute("sess_member", member);
			out.println("location.href='/';");
			
		} else {//로그인 실패
			out.println("history.back();");
		}
		out.println("</script>");
		out.flush();
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		System.out.println("로그인 화면출력");
		RequestDispatcher dis = request.getRequestDispatcher("/WEB-INF/signin.jsp");
		dis.forward(request, response);
	
	}
}
