package com.shinhan.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter @Setter
@ToString
public class OrderdetailVO {
	private int orderdetail_no; // 주문상세 고유 번호
	private int orderdetail_price; // 주문 가격
	private int orderdetail_count; // 주문 개수
	private int order_no; // 주문 고유 번호
	private int pro_no; // 상품 고유 번호

}
