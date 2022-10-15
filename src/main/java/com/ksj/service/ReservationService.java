package com.ksj.service;

import java.util.List;

import com.ksj.model.ReservationVO;
import com.ksj.model.RoomVO;

public interface ReservationService {
	List<RoomVO> getRoomNames();
	RoomVO getRoom(Long rno);
	void reserve(ReservationVO vo);
	List<ReservationVO> reserveList();
}
