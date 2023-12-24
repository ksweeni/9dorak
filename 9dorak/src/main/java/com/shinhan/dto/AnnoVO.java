package com.shinhan.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class AnnoVO {
	private int anno_no; //공지사항 고유 번호
	private String anno_title; //공지사항 제목
	private String anno_cont; //공지사항 내용
	private int anno_view; //공지사항 조회수
	private Date anno_date; //공지사항 작성 날짜
	private String anno_writer; //공지사항 작성자
	private String anno_image; //공지사항 이미지
	private String order_type;
	
	
	
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
