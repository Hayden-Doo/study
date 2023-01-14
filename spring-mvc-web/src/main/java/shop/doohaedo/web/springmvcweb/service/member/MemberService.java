package shop.doohaedo.web.springmvcweb.service.member;

import java.util.List;

import shop.doohaedo.web.springmvcweb.vo.MemberVo;

public interface MemberService {
	List<MemberVo> getMemberList(int userNo);
	int setMember(MemberVo vo);
	List<MemberVo> getMemberListAll(MemberVo vo);
}
