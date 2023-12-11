package com.shinhan.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter @Setter
@ToString
public class MemVO {
	private String mem_id; //회원아이디
	private String mem_name; //회원이름
	private String mem_gender; //회원성별
	private String mem_bd; //회원생년월일
	private String mem_email; //회원이메일
	private String mem_phone; //회원핸드폰번호
	private String mem_pw; //회원비밀번호
	private String mem_code; //회원코드번호
	private String mem_addr; // 회원기본주소
	private int mem_point; //회원포인트
	private String mem_grade; //회원등급
	private String mem_aller; //회원고유알레르기
	private int mem_quit; //회원탈퇴
	
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_gender() {
		return mem_gender;
	}
	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}
	public String getMem_bd() {
		return mem_bd;
	}
	public void setMem_bd(String mem_bd) {
		this.mem_bd = mem_bd;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_code() {
		return mem_code;
	}
	public void setMem_code(String mem_code) {
		this.mem_code = mem_code;
	}
	public String getMem_addr() {
		return mem_addr;
	}
	public void setMem_addr(String mem_addr) {
		this.mem_addr = mem_addr;
	}
	public int getMem_point() {
		return mem_point;
	}
	public void setMem_point(int mem_point) {
		this.mem_point = mem_point;
	}
	public String getMem_grade() {
		return mem_grade;
	}
	public void setMem_grade(String mem_grade) {
		this.mem_grade = mem_grade;
	}
	public String getMem_aller() {
		return mem_aller;
	}
	public void setMem_aller(String mem_aller) {
		this.mem_aller = mem_aller;
	}
	public int getMem_quit() {
		return mem_quit;
	}
	public void setMem_quit(int mem_quit) {
		this.mem_quit = mem_quit;
	}		
	
	@Override
	public String toString() {
		return "MemVO [mem_id=" + mem_id + ", mem_name=" + mem_name + ", mem_gender=" + mem_gender + ", mem_bd="
				+ mem_bd + ", mem_email=" + mem_email + ", mem_phone=" + mem_phone + ", mem_pw=" + mem_pw
				+ ", mem_code=" + mem_code + ", mem_addr=" + mem_addr + ", mem_point=" + mem_point + ", mem_grade="
				+ mem_grade + ", mem_aller=" + mem_aller + ", mem_quit=" + mem_quit + "]";
	}
}
