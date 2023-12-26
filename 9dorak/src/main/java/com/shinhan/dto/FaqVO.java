package com.shinhan.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter @Setter
@ToString
public class FaqVO {
	private int faq_no; // 질문 고유 번호
	private String faq_title; // 질문 제목
	private String faq_cont; // 질문 내용

	
	
	
	
	private int currentPage;
	public void setStartIndex(int startIndex) {
		// TODO Auto-generated method stub
		
	}
	public void setCntPerPage(int displayRow) {
		// TODO Auto-generated method stub
		
	}
	
	public int getCurrentPage() {
		return currentPage;
	}


	public void setCurrentPage(int currentPage) {
		this.currentPage =(currentPage-1)*10;
	}

}
