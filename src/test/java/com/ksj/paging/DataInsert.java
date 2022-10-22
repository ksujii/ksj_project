package com.ksj.paging;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.ksj.config.RootConfig;
import com.ksj.config.ServletConfig;
import com.ksj.mapper.BoardMapper;
import com.ksj.model.BoardVO;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {RootConfig.class,ServletConfig.class})
@WebAppConfiguration
public class DataInsert {

	@Autowired
	BoardMapper mapper; 
	
	@Test
	public void dataInsert() {
		
		for (int i = 1; i <= 100; i++) {
			BoardVO board = new BoardVO();
			board.setTitle("공지사항"+i);
			board.setContent("공지하상 내용"+i);
			board.setWriter("운영자");
			board.setCategory("notice");
			mapper.insert(board);
		}
	}

}
