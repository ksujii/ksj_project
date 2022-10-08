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
		
		for (int i = 1; i <= 212; i++) {
			BoardVO board = new BoardVO();
			board.setTitle("페이징처리 제목"+i);
			board.setContent("페이징처리 내용"+i);
			board.setWriter("김병만");
			board.setCategory("review");
			mapper.insert(board);
		}
	}

}
