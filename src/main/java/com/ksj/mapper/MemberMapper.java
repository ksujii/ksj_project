package com.ksj.mapper;

import java.util.List;

import com.ksj.model.MemberVO;

public interface MemberMapper {
	void register(MemberVO vo);
	List<MemberVO> list();
}
