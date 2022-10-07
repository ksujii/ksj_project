package com.ksj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ksj.mapper.BoardMapper;
import com.ksj.model.BoardVO;
import com.ksj.model.Criteria;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardMapper mapper;
	
	@Override
	public List<BoardVO> list(Criteria criteria) {
		return mapper.list(criteria);
	}

	@Override
	public BoardVO get(Long bno) {
		
		return mapper.get(bno);
	}

	@Override
	public void register(BoardVO board) {
		mapper.insert(board);
		
	}

	@Override
	public void modify(BoardVO board) {
		mapper.update(board);
		
	}

	@Override
	public void remove(Long bno) {
		mapper.delete(bno);
		
	}

	@Override
	public int totalCount(Criteria criteria) {
		return mapper.totalCnt(criteria);
	}
	
}
