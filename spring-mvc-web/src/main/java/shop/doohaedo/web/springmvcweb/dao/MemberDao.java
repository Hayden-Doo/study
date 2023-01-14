package shop.doohaedo.web.springmvcweb.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import shop.doohaedo.web.springmvcweb.vo.MemberVo;

@Mapper
public interface MemberDao {
	
	List<MemberVo> getMemberList(int userNo);
	int setMember(MemberVo vo);
	List<MemberVo> getMemberListAll(MemberVo vo);

}
