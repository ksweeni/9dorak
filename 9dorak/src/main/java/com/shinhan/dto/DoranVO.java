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
	public int getDoran_no() {
		return doran_no;
	}
	public void setDoran_no(int doran_no) {
		this.doran_no = doran_no;
	}
	public String getDoran_title() {
		return doran_title;
	}
	public void setDoran_title(String doran_title) {
		this.doran_title = doran_title;
	}
	public String getDoran_cont() {
		return doran_cont;
	}
	public void setDoran_cont(String doran_cont) {
		this.doran_cont = doran_cont;
	}
	public Date getDoran_date() {
		return doran_date;
	}
	public void setDoran_date(Date doran_date) {
		this.doran_date = doran_date;
	}
	public String getDoran_image() {
		return doran_image;
	}
	public void setDoran_image(String doran_image) {
		this.doran_image = doran_image;
	}
	public int getDoran_view() {
		return doran_view;
	}
	public void setDoran_view(int doran_view) {
		this.doran_view = doran_view;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	@Override
	public String toString() {
		return "DoranVO [doran_no=" + doran_no + ", doran_title=" + doran_title + ", doran_cont=" + doran_cont
				+ ", doran_date=" + doran_date + ", doran_image=" + doran_image + ", doran_view=" + doran_view
				+ ", mem_id=" + mem_id + "]";
	}
	
	
}
