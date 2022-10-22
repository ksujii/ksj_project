package com.ksj.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AttachVO {

	Long rno;
	String uuid;
	String uploadPath;
	String fileName;
	boolean fileType;
	
}
