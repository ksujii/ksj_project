package com.ksj.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@ToString
public class RoomVO {
	Long rno;//객실등록번호
	String roomName; // 객실명
	int standardNum; // 기준인원
	int maximumNum; // 최대인원
	String roomArea; // 넓이
	String roomForm; // 형태
	String roomType; // 유형
	String remarks; // 특이사항
	String facilities; // 구비시설
	String weekDay; // 주중
	String weekend; // 주말 
}
