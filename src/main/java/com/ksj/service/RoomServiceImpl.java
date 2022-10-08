package com.ksj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ksj.mapper.RoomMapper;
import com.ksj.model.RoomVO;

@Service
public class RoomServiceImpl implements RoomService{
	@Autowired
	RoomMapper mapper;
	
	@Override
	public void register(RoomVO vo) {
		mapper.register(vo);
	}

	@Override
	public List<RoomVO> list() {
		return mapper.list();
	}
}
