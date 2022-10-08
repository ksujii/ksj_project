package com.ksj.mapper;

import java.util.List;

import com.ksj.model.RoomVO;

public interface RoomMapper {
	void register(RoomVO vo);
	List<RoomVO> list(); 
	List<RoomVO> getRoomNames();
}
