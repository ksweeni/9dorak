package com.shinhan.dto;

import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class EventVO {
	int event_no; //이벤트 고유 번호
	String event_title; //이벤트 제목
	String event_cont; //이벤트 내용
	String event_image; //이벤트 이미지
}
