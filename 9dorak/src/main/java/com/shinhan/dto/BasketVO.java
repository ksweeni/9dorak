package com.shinhan.dto;

import java.sql.Timestamp;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class BasketVO {
	private int pro_no; // 상품 고유 번호
	private Timestamp basket_date; // 장바구니 추가 날짜
	private int basket_pro_count; // 장바구니 상품 수량
	private String mem_id; // 회원 아이디
	
	// 지우지 말아주세요.. 롬복이 안되여..
	public BasketVO(String mem_id, int pro_no) {
        this.mem_id = mem_id;
        this.pro_no = pro_no;
    }
}
