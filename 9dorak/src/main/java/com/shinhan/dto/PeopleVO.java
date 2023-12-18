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
public class PeopleVO {
	private String mem_id; // 회원 아이디 .. PK
	private String mem_id2; // 지인 아이디 .. PK
	// 회원에게는 지인 코드를 입력받고, 코드로 해당 아이디 검색해서, 아이디 값으로 저장 .. 우리는 회원 아이디로 활용
	private String people_category; // 지인 구분 .. 가족 또는 지인
	private Date people_date ; //지인 등록 날짜 .. sysdate
	
}
