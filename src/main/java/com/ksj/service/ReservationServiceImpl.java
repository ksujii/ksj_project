package com.ksj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ksj.mapper.RoomMapper;
import com.ksj.model.RoomVO;
@Service
public class ReservationServiceImpl implements ReservationService{
	@Autowired
	private RoomMapper roomMapper;
	
	@Override
	public List<RoomVO> getRoomNames(){
		return roomMapper.getRoomNames();
	}

}
