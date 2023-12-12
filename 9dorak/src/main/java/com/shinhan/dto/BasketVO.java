package com.shinhan.dto;

import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class BasketVO {
	private int pro_no; // 상품 고유 번호
	private Date basket_date; // 장바구니 추가 날짜
	private int basket_pro_count; // 장바구니 상품 수량
	private String mem_id; // 회원 아이디
}
