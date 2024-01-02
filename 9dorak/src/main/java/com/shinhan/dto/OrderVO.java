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
	private int order_price; // 주문 가격
	private String order_status; // 주문 상태
	private String order_refund; // 환불 사유
	private String mem_id; // 회원 아이디
	
	
	// 주석 처리 해야함
	private int pro_no; // 상품 번호
	private int orderdetail_count; // 상품 수량
	private String pro_name; // 상품명 
	private int pro_price;
}
