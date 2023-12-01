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
public class ProVO {
	int pro_no; //상품 고유 번호
	String pro_name; //상품 이름
	int pro_price; //상품 가격
	int pro_like; //상품 좋아요 수
	String pro_nut; //상품 영양소
	int pro_sub; //상품 구독 수
	Date pro_ed; //상품 유통기한
	int pro_sc; //상품 재고 수
	int pro_view; // 상품 조회수
	Date pro_rd; //상품 등록 날짜
	String pro_delete; //상품 상품 삭제 여부 여부
	String pro_aller; //상품알레르기
	int pro_prot; //단백질
	int pro_carb; //탄수화물
	int pro_prov; //지방
	int pro_nat; //나트륨
	int pro_sugar; //당류
	int pro_cal; //칼로리
	int pro_weight; // 중랴량
	public int getPro_no() {
		return pro_no;
	}
	public void setPro_no(int pro_no) {
		this.pro_no = pro_no;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public int getPro_price() {
		return pro_price;
	}
	public void setPro_price(int pro_price) {
		this.pro_price = pro_price;
	}
	public int getPro_like() {
		return pro_like;
	}
	public void setPro_like(int pro_like) {
		this.pro_like = pro_like;
	}
	public String getPro_nut() {
		return pro_nut;
	}
	public void setPro_nut(String pro_nut) {
		this.pro_nut = pro_nut;
	}
	public int getPro_sub() {
		return pro_sub;
	}
	public void setPro_sub(int pro_sub) {
		this.pro_sub = pro_sub;
	}
	public Date getPro_ed() {
		return pro_ed;
	}
	public void setPro_ed(Date pro_ed) {
		this.pro_ed = pro_ed;
	}
	public int getPro_sc() {
		return pro_sc;
	}
	public void setPro_sc(int pro_sc) {
		this.pro_sc = pro_sc;
	}
	public int getPro_view() {
		return pro_view;
	}
	public void setPro_view(int pro_view) {
		this.pro_view = pro_view;
	}
	public Date getPro_rd() {
		return pro_rd;
	}
	public void setPro_rd(Date pro_rd) {
		this.pro_rd = pro_rd;
	}
	public String getPro_delete() {
		return pro_delete;
	}
	public void setPro_delete(String pro_delete) {
		this.pro_delete = pro_delete;
	}
	public String getPro_aller() {
		return pro_aller;
	}
	public void setPro_aller(String pro_aller) {
		this.pro_aller = pro_aller;
	}
	public int getPro_prot() {
		return pro_prot;
	}
	public void setPro_prot(int pro_prot) {
		this.pro_prot = pro_prot;
	}
	public int getPro_carb() {
		return pro_carb;
	}
	public void setPro_carb(int pro_carb) {
		this.pro_carb = pro_carb;
	}
	public int getPro_prov() {
		return pro_prov;
	}
	public void setPro_prov(int pro_prov) {
		this.pro_prov = pro_prov;
	}
	public int getPro_nat() {
		return pro_nat;
	}
	public void setPro_nat(int pro_nat) {
		this.pro_nat = pro_nat;
	}
	public int getPro_sugar() {
		return pro_sugar;
	}
	public void setPro_sugar(int pro_sugar) {
		this.pro_sugar = pro_sugar;
	}
	public int getPro_cal() {
		return pro_cal;
	}
	public void setPro_cal(int pro_cal) {
		this.pro_cal = pro_cal;
	}
	public int getPro_weight() {
		return pro_weight;
	}
	public void setPro_weight(int pro_weight) {
		this.pro_weight = pro_weight;
	}
	@Override
	public String toString() {
		return "ProVO [pro_no=" + pro_no + ", pro_name=" + pro_name + ", pro_price=" + pro_price + ", pro_like="
				+ pro_like + ", pro_nut=" + pro_nut + ", pro_sub=" + pro_sub + ", pro_ed=" + pro_ed + ", pro_sc="
				+ pro_sc + ", pro_view=" + pro_view + ", pro_rd=" + pro_rd + ", pro_delete=" + pro_delete
				+ ", pro_aller=" + pro_aller + ", pro_prot=" + pro_prot + ", pro_carb=" + pro_carb + ", pro_prov="
				+ pro_prov + ", pro_nat=" + pro_nat + ", pro_sugar=" + pro_sugar + ", pro_cal=" + pro_cal
				+ ", pro_weight=" + pro_weight + "]";
	}
	
	
}
