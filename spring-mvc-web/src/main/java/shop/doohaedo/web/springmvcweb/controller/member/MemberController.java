package shop.doohaedo.web.springmvcweb.controller.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import shop.doohaedo.web.springmvcweb.service.member.MemberService;
import shop.doohaedo.web.springmvcweb.vo.MemberVo;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;

	// -- 화면 출력
	@RequestMapping("/member/memberRegister.do")
	public String memberString(Model model, MemberVo insertMemberVo) { 
		// -- WEB-INF/jsp/member/memberRegit.jsp
		// -- member/memberRegist
		// -- prefix : WEB-INF/jsp/
		// -- suffix : .jsp

		// 방식 1. request 객체 활용
//		메소드 인다에 HttpServletRequest 추가
//		String userName = request.getParameter("userName");
//		String userPwd = request.getParameter("userPwd");
//		String userEmail = request.getParameter("userEmail");

		// 방식 2.
		// @RequestParam 매소드 인자로 활용
		// "@RequestParam(value="값", required = false) String s"
//		public String memberString(Model model,
//				@RequestParam(value="userName", required = false) String userName,
//				@RequestParam(value="userEmail", required = false) String userEmail,
//				@RequestParam(value="userPwd", required = false) String userPwd
//				) { 
		
		// 방식 3.
		if (insertMemberVo != null) memberService.setMember(insertMemberVo);
		
//		if (userName != null && userEmail != null && userPwd != null) {
//			MemberVo insertMemberVo = new MemberVo();
//			insertMemberVo.setUserName(userName);
//			insertMemberVo.setUserPwd(userPwd);
//			insertMemberVo.setUserEmail(userEmail);
//
//			memberService.setMember(insertMemberVo);
//		}

		List<MemberVo> memberAllList = memberService.getMemberListAll(null);
		model.addAttribute("memberList", memberAllList);

		return "member/memberRegister";
	}

}
