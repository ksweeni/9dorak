package com.shinhan.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter @Setter
@ToString
public class SubVO {
	int sub_no; // 구독 고유 번호
	String sub_extend; // 구독 연장 여부 .. YES or NO
	Date sub_date; // 구독 신청날짜 .. sysdate
	String mem_id; // 회원 아이디
}
