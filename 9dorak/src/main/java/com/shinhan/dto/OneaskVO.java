package com.shinhan.dto;

import java.sql.Date;

public class OneaskVO {
	int oneask_no; // 문의 고유번호
	String oneask_title; // 문의 제목
	String oneask_cont; // 문의 내용
	Date oneask_date; // 문의 작성 날짜
	String oneask_image; // 문의 이미지
	String oneask_status; // 문의 처리여부
	String  mem_id; // 회원 아이디
}
