package com.shinhan.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter@Setter
@ToString
public class MemreviewVO {
	private int orderdetail_no; //주문상세 고유 번호
	private Date memreview_date; //리뷰 작성날짜
	private String memreview_cont; //리뷰 작성 내용
//	private String memreview_starpoint; //리뷰 별점
	private String memreview_image; //리뷰 이미지 
	private int memreview_no; //리뷰 고유번호
	private String mem_id; //멤버 아이디
	
	//private int pro_no;
	//private int order_no;
	
	private String pro_no;
	private String order_no;
	
	private int currentPage;
	
	public void setStartIndex(int startIndex) {
		
	}
	public void setCntPerPage(int displayRow) {
		
	}
	
	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage =(currentPage-1)*10;
	}
	
}
