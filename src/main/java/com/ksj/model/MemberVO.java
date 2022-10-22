package com.ksj.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class MemberVO {
	private Long id;
	private String memberId;
	private String password;
	private String memberName;
	private String email;
	private String phoneNumber;
	private Date regDate; 
	private Date updateDate;
}
