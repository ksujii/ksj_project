package com.ksj.model;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReservationVO {
	Long rno; // 예약번호
	String phoneNumber; // 전화번호
	String memberName; // 예약자 이름
	String roomName; // 객실
	Integer addPerson; //추가인원 
	boolean babekyu;//바베큐
	Date checkIn; //체크인
	Date checkOut;//체크아웃

}
