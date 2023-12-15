package com.shinhan.dto;



import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@ToString
public class EarnpointVO {
	int point_no;  //적립고유번호
	String point_name; //적립포인트명
	Date point_date; // 적립날짜
	int point; //적립포인트
	String mem_id; //회원아이디
}
