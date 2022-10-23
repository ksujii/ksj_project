package com.ksj.model;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@ToString
public class RoomVO {
	private Long rno;//객실등록번호
	private String roomName; // 객실명
	private int standardNum; // 기준인원
	private int maximumNum; // 최대인원
	private String roomArea; // 넓이
	private String roomForm; // 형태
	private String roomType; // 유형
	private String remarks; // 특이사항
	private String facilities; // 구비시설
	private String weekDay; // 주중
	private String weekend; // 주말 
	private List<AttachVO> attachList; ///사진정보담기
	
}
