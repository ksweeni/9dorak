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
public class OneaskVO {
	private int oneask_no; // 문의 고유번호
	private String oneask_title; // 문의 제목
	private String oneask_cont; // 문의 내용
	private Date oneask_date; // 문의 작성 날짜
	private String oneask_image; // 문의 이미지
	private String oneask_status; // 문의 처리여부
	private String  mem_id; // 회원 아이디
	private String order_type; //정렬 기준
	private String oneask_answer; //문의 답변
}
