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

public class DeliveryHistoryVO  {
	private int order_no; // 주문 고유 번호
	private Date order_date; //주문 날짜 
	private String order_category; // 주문 구분
	private String order_status; // 주문 상태
	private String order_refund; // 환불 사유
	private String mem_id; // 회원 아이디
	private int orderdetail_price; // 상세 주문 가격
	private int orderdetail_count; // 주문 개수
    private String pro_name; // 제품 이름
    private String delivery_status; // 배송 상태
}
