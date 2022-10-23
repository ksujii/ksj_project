package com.ksj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ksj.mapper.AttachMapper;
import com.ksj.mapper.RoomMapper;
import com.ksj.model.RoomVO;

@Service
public class RoomServiceImpl implements RoomService{
	@Autowired
	private RoomMapper mapper;
	
	@Autowired
	private AttachMapper attachMapper;
	
	@Override
	public void register(RoomVO vo) {
		mapper.register(vo);//객실정보 등록
		
		//객실이미지등록
		
		//첨부된 파일이 없으면 ...
		if(vo.getAttachList()==null || vo.getAttachList().size()<=0) return;
		
		//첨부파일이 있을때
		vo.getAttachList().forEach( attach ->{
			attach.setRno(vo.getRno());//객실객체의 rno값을 attachVO객체의 rno값에 저장
			attachMapper.insert(attach);
		});
	}

	@Override
	public List<RoomVO> list() {
		return mapper.list();
	}
}
