package com.ksj.model;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class PageMarker {

	private Criteria criteria;
	private int startPage; 
	private int endPage;
	private int tempEndPage; 
	private int totalCount; 
	private  int displayPageNum=10;
	
	private boolean prev; 
	private boolean next; 
	
	public PageMarker(Criteria criteria, int totalCount) {
		 this.criteria = criteria;
		 this.totalCount = totalCount; 
		 endPage = (int) Math.ceil(criteria.getPage()/(double)displayPageNum) * displayPageNum;
		 startPage = endPage - displayPageNum + 1;
		 tempEndPage = (int) Math.ceil(totalCount / (double)criteria.getPerPageNum());
		 
		 prev = startPage != 1;
		 next = endPage < tempEndPage;  
		 
		 if(endPage > tempEndPage) endPage = tempEndPage;
		 
	}
}
