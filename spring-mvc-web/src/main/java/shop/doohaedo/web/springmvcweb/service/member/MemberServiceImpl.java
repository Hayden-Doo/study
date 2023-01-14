package shop.doohaedo.web.springmvcweb.service.member;

import java.util.List;

import org.springframework.stereotype.Service;

import shop.doohaedo.web.springmvcweb.dao.MemberDao;
import shop.doohaedo.web.springmvcweb.vo.MemberVo;

@Service
public class MemberServiceImpl implements MemberService{
	
//	비추천 방식
//	@Autowired
//	private MemberDao memberDao;
	
	private final MemberDao memberDao;
	
//	@Autowired 생략 가능
	public MemberServiceImpl(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	@Override
	public List<MemberVo> getMemberList(int userNo) {
		return memberDao.getMemberList(userNo);
	}

	@Override
	public int setMember(MemberVo vo) {
		return memberDao.setMember(vo);
	}

	@Override
	public List<MemberVo> getMemberListAll(MemberVo vo) {
		return memberDao.getMemberListAll(vo);
	}

}
