package com.shinhan.dto;

import java.sql.Date;

public class OrderVO {
	int order_no; // 주문 고유 번호
	Date order_date; //주문 날짜 
	String order_category; // 주문 구분
	String order_status; // 주문 상태
	String order_refund; // 환불 사유
	String mem_id; // 회원 아이디
}
