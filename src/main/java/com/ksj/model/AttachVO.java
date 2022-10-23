package com.ksj.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AttachVO {

	private Long rno;
	private String uuid;
	private String uploadPath;
	private String fileName;
	private boolean fileType;
	
}
