package com.ksj.service;

import java.util.List;

import com.ksj.model.RoomVO;

public interface RoomService {
	void register(RoomVO vo);
	List<RoomVO> list(); 
}
