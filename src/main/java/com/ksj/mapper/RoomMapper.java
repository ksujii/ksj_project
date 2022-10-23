package com.ksj.mapper;

import java.util.List;

import com.ksj.model.AttachVO;
import com.ksj.model.RoomVO;

public interface RoomMapper {
	void register(RoomVO vo);
	List<RoomVO> list(); 
	List<RoomVO> getRoomNames();
	RoomVO getRoom(Long rno);
	
	List<AttachVO> attachList(Long rno);
}
