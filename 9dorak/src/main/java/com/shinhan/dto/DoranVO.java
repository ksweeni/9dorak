package com.shinhan.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class DoranVO {
	int doran_no; // 도란도란 고유 번호
	String doran_title; // 커뮤니티 제목
	String doran_cont; // 커뮤니티 내용
	Date doran_date; // 커뮤니티 작성 날짜
	String doran_image; // 커뮤니티 이미지
	int doran_view; // 커뮤니티 조회수
	String mem_id; // 회원 아이디
	int dlike; // 좋아요 수
	int dcomment; // 댓글 수
}
