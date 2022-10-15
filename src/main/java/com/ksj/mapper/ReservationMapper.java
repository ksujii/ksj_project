package com.ksj.mapper;

import java.util.List;

import com.ksj.model.ReservationVO;

public interface ReservationMapper {
	void reserve(ReservationVO vo);
	List<ReservationVO> reserveList();

}
