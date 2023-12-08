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
public class SubdetailVO {
	int pro_no ; // 상품 고유번호
	int sub_no ; // 구독 고유 번호
	int pro_count ; //상품 수량
}