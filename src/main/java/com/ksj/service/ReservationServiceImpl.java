package com.ksj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ksj.mapper.ReservationMapper;
import com.ksj.mapper.RoomMapper;
import com.ksj.model.ReservationVO;
import com.ksj.model.RoomVO;
@Service
public class ReservationServiceImpl implements ReservationService{
	@Autowired
	private RoomMapper roomMapper;
	
	@Autowired
	private ReservationMapper reserveMapper;
	
	@Override
	public List<RoomVO> getRoomNames(){
		return roomMapper.getRoomNames();
	}

	@Override
	public RoomVO getRoom(Long rno) {
		return roomMapper.getRoom(rno);
	}

	@Override
	public void reserve(ReservationVO vo) {
		reserveMapper.reserve(vo);
	}

	@Override
	public List<ReservationVO> reserveList() {
		
		return reserveMapper.reserveList();
	}

}
