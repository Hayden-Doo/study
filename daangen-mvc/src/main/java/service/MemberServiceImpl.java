package service;

import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

import dao.MemberDao;
import dao.MemberDaoImpl;
import vo.MemberVo;

public class MemberServiceImpl implements MemberService {

	private MemberDao memberDao = new MemberDaoImpl();
	private static MemberService memberService = null;
	
	public static MemberService getMemberService() {
		if (memberService == null) {
			memberService = new MemberServiceImpl();
		}
		return memberService;
	}
	
	// 회원 가입 
	@Override
	public Map<String, Object> registUser(MemberVo member)  {
		
		int result = 0;
		Map<String, Object> resultMessage = new HashMap<String, Object>();
		resultMessage.put("result", false); //
		resultMessage.put("message", ""); //
		resultMessage.put("resultObject", null); //
		
		try {
			// checkUserDuplicated 메소드로 아이디/이메일 중복체크
			// true false
			if (!memberDao.checkUserDuplicated(member)) {
				
				result = memberDao.insertMember(member);
				if (result > 0) {
					resultMessage.put("result", true);
					resultMessage.put("message", "회원가입 성공");
					resultMessage.put("resultObject", member); 
				} else {
					resultMessage.put("result", false);
					resultMessage.put("message", "회원가입 실패");
					resultMessage.put("resultObject", member); 
					
				}
			} else { // 메시지 전발해야 함
				resultMessage.put("result", false);
				resultMessage.put("message", "아이디 중복");
				resultMessage.put("resultObject", member); 
			}
		} catch (Exception ex) {
			resultMessage.put("result", false);
			resultMessage.put("message", "회원가입 중 서버에러 발생");
			resultMessage.put("resultObject", member); 
		}
		
		return resultMessage;
	}

	// 회원 로그인 성공
	@Override
	public Map<String, Object> loginUser(MemberVo member)  {
		
		Map<String, Object> resultMessage = new HashMap<String, Object>();
		resultMessage.put("result", false); //
		resultMessage.put("message", ""); //
		resultMessage.put("resultObject", null); //
		
		try {
			boolean isLoginSucc = memberDao.loginUser(member);
			if (isLoginSucc) {
				resultMessage.put("result", true); //
				resultMessage.put("message", "로그인 성공"); //
				resultMessage.put("resultObject", member); //
			} else {
				resultMessage.put("result", false); //
				resultMessage.put("message", "로그인 실패"); //
				resultMessage.put("resultObject", member); //
			}
			
		} catch (Exception ex) {
			resultMessage.put("result", false);
			resultMessage.put("message", "회원가입 중 서버에러 발생");
			resultMessage.put("resultObject", member); 
			System.out.println(ex.getMessage());
		}
		
		return resultMessage;
	}

}
