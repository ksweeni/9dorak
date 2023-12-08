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
	private Date memriew_date; //리뷰 작성날짜
	private String memreview_cont; //리뷰 작성 내용
	private String memreview_starpoint; //리뷰 별점
	private String memreview_image; //리뷰 이미지 
}
