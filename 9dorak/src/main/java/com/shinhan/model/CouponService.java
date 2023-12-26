package com.shinhan.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinhan.dto.CouponVO;

@Service
public class CouponService {

	@Autowired
	CouponDAOMybatis dao;

	public List<CouponVO> selectAll() {
		return dao.selectAll();
	}

	public int insertCoupon(CouponVO coupon){
		return dao.insertCoupon(coupon);
	}
	
	public void deleteCoupons(List<Integer> couponCode) {
		dao.deleteCoupons(couponCode);
	}
	
	public void deleteCouponName(String CouponName) {
		dao.deleteCouponName(CouponName);
	}
	
	public List<String> selectDistinctCoupon() {
		return dao.selectDistinctCoupon();
	}
}
