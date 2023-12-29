package com.shinhan.dto;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter @Setter
@ToString
public class ProimageVO {
	private int proimage_no; // 상품 이미지 고유 번호
	private String proimage_image; // 상품 이미지
	private int pro_no; // 상품 고유 번호
	

}
