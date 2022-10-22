package com.ksj.service;

import java.util.List;

import com.ksj.model.MemberVO;

public interface MemberService {

	List<MemberVO> Memberlist();
	void memverRegister(MemberVO vo);
}
