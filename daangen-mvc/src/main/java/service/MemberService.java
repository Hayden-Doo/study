package service;

import java.util.Map;

import vo.MemberVo;

public interface MemberService {
	
	// 회원 가입 메소드
	Map<String, Object> registUser(MemberVo member);
	
	// 회원 로그인 성공 
	Map<String, Object> loginUser(MemberVo member);

}
