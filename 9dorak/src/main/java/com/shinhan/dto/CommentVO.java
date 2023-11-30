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
public class CommentVO {
	int comment_no; // 댓글 고유 번호
	String comment_cont; // 댓글 내용
	Date comment_date; // 댓글 날짜
	int doran_no; // 도란도란 고유 번호
	@Override
	public String toString() {
		return "CommentVO [comment_no=" + comment_no + ", comment_cont=" + comment_cont + ", comment_date="
				+ comment_date + ", doran_no=" + doran_no + "]";
	}

	public String getComment_cont() {
		return comment_cont;
	}

	public void setComment_cont(String comment_cont) {
		this.comment_cont = comment_cont;
	}

	public Date getComment_date() {
		return comment_date;
	}

	public void setComment_date(Date comment_date) {
		this.comment_date = comment_date;
	}

	public int getDoran_no() {
		return doran_no;
	}

	public void setDoran_no(int doran_no) {
		this.doran_no = doran_no;
	}

	public int getComment_no() {
	    return comment_no;
	}

	public void setComment_no(int comment_no) {
	    this.comment_no = comment_no;
	}
}
