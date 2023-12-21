package com.shinhan.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter @Setter
@ToString
public class MemVO {
	private String mem_id; //회원아이디
	private String mem_name; //회원이름
	private String mem_bd; //회원생년월일
	private String mem_email; //회원이메일
	private String mem_phone; //회원핸드폰번호
	private String mem_pw; //회원비밀번호
	private String mem_code; //회원코드번호
//	private String mem_addr; // 회원기본주소
	private int mem_point; //회원포인트
	private String mem_grade; //회원등급
//	private String mem_aller; //회원고유알레르기
	private int mem_quit; //회원탈퇴
	private String mem_image ; // 회원 프로필 사진

}
