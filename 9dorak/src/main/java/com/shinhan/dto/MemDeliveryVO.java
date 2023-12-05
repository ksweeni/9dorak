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
	String mem_addr ;  // 배송지주소
	String mem_delname; // 배송지명
}
