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
public class CategoryVO {
	private int pro_no ; // 상품 고ㅓ유번호
	private int ingre_no ; // 성분 고유번호
}
