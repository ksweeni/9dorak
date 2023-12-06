package com.shinhan.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Setter@Getter
@ToString
public class MemDeliveryVO {
	String mem_id ; // 호원아이디
	String mem_addr ;  // 지번주소
	String mem_delname; // 배송지명
	String mem_zipcode; // 우편번호
	String mem_road; // 도로명주소
	String mem_detail; // 상세주소
	String mem_refer; // 참고항목
}
