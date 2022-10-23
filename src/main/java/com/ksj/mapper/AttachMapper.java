package com.ksj.mapper;

import java.util.List;

import com.ksj.model.AttachVO;

public interface AttachMapper {

	void insert(AttachVO vo);
	void delete(String uuid);
	List<AttachVO> findByRno(Long rno);
}
