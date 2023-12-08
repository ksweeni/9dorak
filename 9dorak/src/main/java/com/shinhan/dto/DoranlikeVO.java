package com.shinhan.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter @Setter
@ToString
public class DoranlikeVO {
	private int doran_no; // 도란도란 고유 번호
	private String mem_id; // 회원 아이디
}
