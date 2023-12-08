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
public class FaqVO {
	private int faq_no; // 질문 고유 번호
	private String faq_title; // 질문 제목
	private String faq_cont; // 질문 내용

}
