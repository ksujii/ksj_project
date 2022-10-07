package com.ksj.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class BoardVO {
	private Long bno; 
	private String title;  
	private String content;  
	private String writer;  
	private Date regDate; 
	private Date updateDate;
	private String category;
	
	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", title=" + title + ", content=" + content + ", writer=" + writer + ", regDate="
				+ regDate + ", updateDate=" + updateDate + "]";
	}
}
