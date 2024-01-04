package com.shinhan.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinhan.dto.CouponVO;
import com.shinhan.dto.DeliveryHistoryVO;
import com.shinhan.dto.DeliveryVO;
import com.shinhan.dto.EarnpointVO;
import com.shinhan.dto.MemDeliveryVO;
import com.shinhan.dto.MemVO;
import com.shinhan.dto.PeopleVO;
import com.shinhan.dto.ProVO;

@Service
public class MyPageService {

	@Autowired
	MyPageDAOMybatis dao;

	public MemVO getMember(String login_id) {
		// TODO Auto-generated method stub
		return dao.getMember(login_id);
	}

	public int updateMember(MemVO mem) {
		// TODO Auto-generated method stub
		return dao.updateMember(mem);
	}

	public int deleteMember(String mem_id) {
		// TODO Auto-generated method stub
		return dao.deleteMember(mem_id);

	}

	public List<MemDeliveryVO> getDelivery(String mem_id) {
		// TODO Auto-generated method stub
		return dao.getDelivery(mem_id);
	}

	public int deleteDelivery(MemDeliveryVO memdel) {
		// TODO Auto-generated method stub

		return dao.deleteDelivery(memdel);
	}

	public int insertDelivery(MemDeliveryVO memDel) {
		// TODO Auto-generated method stub
		return dao.insertDelivery(memDel);
	}

	public int selectDelivery(MemDeliveryVO memDel) {
		// TODO Auto-generated method stub
		return dao.selectDelivery(memDel);
	}

	//

	public List<ProVO> getLikeList(String mem_id) {
		// TODO Auto-generated method stub
		return dao.getLikeList(mem_id);
	}

	public List<CouponVO> getCoupon(String mem_id) {
		// TODO Auto-generated method stub
		return dao.getCoupon(mem_id);
	}

	public int couponCheck(CouponVO coupon) {
		// TODO Auto-generated method stub
		return dao.couponCheck(coupon);
	}

	public int couponRegUpdate(CouponVO coupon) {
		// TODO Auto-generated method stub
		return dao.couponRegUpdate(coupon);
	}

	public int profileUpdate(MemVO memVO) {
		// TODO Auto-generated method stub
		return dao.profileUpdate(memVO);
	}

	public int profileDelete(MemVO memVO) {
		// TODO Auto-generated method stub
		return dao.profileDelete(memVO);
	}

	// 주문내역
	public List<Map<String, Object>> orderList(String mem_id) {
		return dao.orderList(mem_id);
	}

	// 결제내역
	public List<Map<String, Object>> paymentList(String mem_id) {
		return dao.paymentList(mem_id);
	}

	// 결제취소내역
	public List<Map<String, Object>> cancelList(String mem_id) {
		return dao.cancelList(mem_id);
	}

	// 가족등록
	public int insertPeople(Map<String, String> peopleData) {
		return dao.insertPeople(peopleData);
	}

	// 가족목록
    public List<Map<String, Object>> selectFamilyList(String mem_id) {
        return dao.selectFamilyList(mem_id);
    }
    
    // 가족목록삭제
    public void deleteFamilyMember(String[] selected_mem_id2) {
    	dao.deleteFamilyMember(selected_mem_id2);
    }
	

	// 배송 조회 내역
	public List<DeliveryHistoryVO> AllDeliveryHistory(String mem_id) {
		return dao.AllDeliveryHistory(mem_id);
	}

	public List<DeliveryHistoryVO> getOrdersByMemberAndYear(String mem_id, int year) {
		return dao.getOrdersByMemberAndYear(mem_id, year);
	}

	public List<EarnpointVO> getPointList(String mem_id) {
		// TODO Auto-generated method stub
		return dao.getPointList(mem_id);
	}

	public int updateDoranProfile(MemVO memVO) {
		// TODO Auto-generated method stub
		return dao.updateDoranProfile(memVO);
	}

	public List<CouponVO> getCoupon2(String mem_id) {
		// TODO Auto-generated method stub
		return dao.getCoupon2(mem_id);
	}

}
