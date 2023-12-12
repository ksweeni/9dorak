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
public class OrderVO {
	private int order_no; // 주문 고유 번호
	private Date order_date; //주문 날짜 
	private String order_category; // 주문 구분
	private String order_status; // 주문 상태
	private String order_refund; // 환불 사유
	private String mem_id; // 회원 아이디
}
