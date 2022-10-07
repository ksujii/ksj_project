package com.ksj.mapper;

import java.util.List;

import com.ksj.model.BoardVO;
import com.ksj.model.Criteria;

public interface BoardMapper {
	List<BoardVO> list(Criteria criteria);
	BoardVO get(Long bno);
	void insert(BoardVO board);
	void update(BoardVO board);
	void delete(Long bno);
	int totalCnt(Criteria criteria);
}
