package com.ksj.model;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class PageMarker {

	private Criteria criteria;//
	private int startPage; //
	private int endPage; //
	private int tempEndPage; //
	private int totalCount; //
	private  int displayPageNum=10; //
	
	private boolean prev; //이전페이지로 이동하는 링크를 보여줄 것인지 여부
	private boolean next; //다음페이지로 이동하는 링크를 보여줄 것인지 여부
	
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
