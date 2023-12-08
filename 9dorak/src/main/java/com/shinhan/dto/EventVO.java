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
public class EventVO {
	private int event_no; //이벤트 고유 번호
	private String event_title; //이벤트 제목
	private String event_cont; //이벤트 내용
	private String event_image; //이벤트 이미지

	
}
