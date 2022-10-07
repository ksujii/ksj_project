package com.ksj.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

	@ToString
	@Setter
	@Getter
	public class Criteria {
		private int page; //현재 페이지
		private int perPageNum; //한 페이지당 게시물 수
		private String type; 
		private String keyword;
		private String category;
		
		public Criteria() {
			this.page = 1; //페이지 설정이 없으면 1페이지
			this.perPageNum = 10; //한 페이지에 10개의 게시물
			this.category="notice";
		}

		public Criteria(int page, int perPageNum) {
			super();
			this.page = page;
			this.perPageNum = perPageNum;
		}
		
		public int getPageStart() { //#{pageStart}
			return (this.page-1)*perPageNum;
			//1페이지(1-1)*10 =0
			//2페이지(2-1)*10 =10
			//3페이지(3-1)*10 =20
		}
		
		public String[] getTypeCollection() { // #{typeCollection}
			return type !=null ? type.split("") : new String[] {};  //type= 제목의 유형
		}
		
	}

