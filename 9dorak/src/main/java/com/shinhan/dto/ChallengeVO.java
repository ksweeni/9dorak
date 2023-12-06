package com.shinhan.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@ToString
@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
public class ChallengeVO {
	int  challenge_no; //챌린지 고유 번호
	String challenge_name ;// 챌린지명
	String challenge_cont ; // 챌린지 내용
	String  challenge_image; //챌린지 사진
	Date  challenge_date; //챌린지 작성 날짜
	Date  challenge_start; //챌린지 시작 날짜
	Date  challenge_end; //챌린지 종료 날짜
	String  mem_id; //회원 아이디
	
}
