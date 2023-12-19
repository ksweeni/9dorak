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
	private int doran_no; // 도란도란 고유 번호
	private String doran_title; // 커뮤니티 제목
	private String doran_cont; // 커뮤니티 내용
	private Date doran_date; // 커뮤니티 작성 날짜
	private String doran_image; // 커뮤니티 이미지
	private int doran_view; // 커뮤니티 조회수
	private String mem_id; // 회원 아이디
	private int dlike; // 좋아요 수
	private int dcomment; // 댓글 수
	private String doran_profile; // 프로필 이미지
}
