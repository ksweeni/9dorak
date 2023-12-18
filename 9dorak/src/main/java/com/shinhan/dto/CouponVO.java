package com.shinhan.dto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
@NoArgsConstructor
@AllArgsConstructor
@Getter@Setter
@ToString
public class CouponVO {
	private String coupon_code;  // 쿠폰 코드
	private String coupon_check;  // 쿠폰 사용여부 
	private String coupon_name;  // 쿠폰 사용여부 
	private String coupon_reg ;// 쿠폰 등록여부
	private String mem_id ;  // 회원 아이디
	
	
	
	
}