package com.ksj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ksj.mapper.MemberMapper;
import com.ksj.model.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberMapper mapper;
	
	@Override
	public List<MemberVO> Memberlist() {
		
		return mapper.list();
	}

	@Override
	public void memberRegister(MemberVO vo) {
		mapper.register(vo);
		
	}

}
