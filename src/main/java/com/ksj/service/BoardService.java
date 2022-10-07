package com.ksj.service;

import java.util.List;

import com.ksj.model.BoardVO;
import com.ksj.model.Criteria;

public interface BoardService {
	List<BoardVO> list(Criteria criteria);
	BoardVO get(Long bno);
	void register(BoardVO board);
	void modify(BoardVO board);
	void remove(Long bno);
	int totalCount(Criteria criteria);
	
}
