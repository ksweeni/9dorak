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
	private int order_no; // 주문 고유 번호
	private int pro_no; // 상품 고유 번호
	private int orderdetail_count; // 상품 당 주문 갯수
	private String pro_name; //상품명
	private String order_status;
}
