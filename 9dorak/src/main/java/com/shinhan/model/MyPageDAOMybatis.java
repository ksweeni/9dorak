package com.shinhan.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shinhan.dto.CouponVO;
import com.shinhan.dto.DeliveryHistoryVO;
import com.shinhan.dto.DeliveryVO;
import com.shinhan.dto.DoranVO;
import com.shinhan.dto.EarnpointVO;
import com.shinhan.dto.MemDeliveryVO;
import com.shinhan.dto.MemVO;
import com.shinhan.dto.PeopleVO;
import com.shinhan.dto.ProVO;

@Repository
public class MyPageDAOMybatis {

	@Autowired
	SqlSession sqlSession;
	Logger logger = LoggerFactory.getLogger(MyPageDAOMybatis.class);
	String NAMESPACE = "net.firstzone.myPage.";

	public MemVO getMember(String login_id) {
		// TODO Auto-generated method stub
		MemVO mem = sqlSession.selectOne(NAMESPACE + "getMember", login_id);
		return mem;
	}

	public int updateMember(MemVO mem) {
		int result = sqlSession.update(NAMESPACE + "updateMember", mem);
		return result;
	}

	public int deleteMember(String mem_id) {
		// TODO Auto-generated method stub
		int result = sqlSession.delete(NAMESPACE + "deleteMember", mem_id);
		return result;
	}

	public List<MemDeliveryVO> getDelivery(String mem_id) {
		List<MemDeliveryVO> dlist = sqlSession.selectList(NAMESPACE + "getDelivery", mem_id);
		return dlist;
	}

	public int deleteDelivery(MemDeliveryVO memdel) {
		int result = sqlSession.delete(NAMESPACE + "deleteDelivery", memdel);
		return result;
	}

	public int insertDelivery(MemDeliveryVO memDel) {
		// TODO Auto-generated method stub
		int result = sqlSession.insert(NAMESPACE + "insertDelivery", memDel);
		return result;
	}

	public int selectDelivery(MemDeliveryVO memDel) {
		int result = sqlSession.selectOne(NAMESPACE + "selectDelivery", memDel);
		return result;
	}

	//

	public List<ProVO> getLikeList(String mem_id) {
		List<ProVO> likeList = sqlSession.selectList(NAMESPACE + "getLikeList", mem_id);
		return likeList;
	}

	public List<CouponVO> getCoupon(String mem_id) {
		List<CouponVO> cList = sqlSession.selectList(NAMESPACE + "getCoupon", mem_id);
		return cList;
	}

	public int couponCheck(CouponVO coupon) {
		int result = sqlSession.selectOne(NAMESPACE + "couponCheck", coupon);
		return result;
	}

	public int couponRegUpdate(CouponVO coupon) {
		int result = sqlSession.update(NAMESPACE + "couponRegUpdate", coupon);
		return result;
	}

	public int profileUpdate(MemVO memVO) {
		int result = sqlSession.update(NAMESPACE + "profileUpdate", memVO);
		return result;
	}

	public int profileDelete(MemVO memVO) {
		int result = sqlSession.update(NAMESPACE + "profileDelete", memVO);
		return result;
	}

	// 주문내역
	public List<Map<String, Object>> orderList(String mem_id) {
		List<Map<String, Object>> myOrderList = sqlSession.selectList(NAMESPACE + "orderList", mem_id);
		return myOrderList;
	}

	// 결제내역
	public List<Map<String, Object>> paymentList(String mem_id) {
		List<Map<String, Object>> myPaymentList = sqlSession.selectList(NAMESPACE + "paymentList", mem_id);
		return myPaymentList;
	}

	// 결제취소내역
	public List<Map<String, Object>> cancelList(String mem_id) {
		List<Map<String, Object>> myCancelList = sqlSession.selectList(NAMESPACE + "cancelList", mem_id);
		return myCancelList;
	}

	// 가족등록
	public int insertPeople(Map<String, String> peopleData) {
		return sqlSession.insert(NAMESPACE + "insertPeople", peopleData);
	}

	// 가족목록
	public List<Map<String, Object>> selectFamilyList(String mem_id) {
		return sqlSession.selectList( NAMESPACE + "selectFamilyList", mem_id);
	}
	
	// 가족목록삭제
    public void deleteFamilyMember(String[] selected_mem_id2) {
        sqlSession.delete("deleteFamilyMember", selected_mem_id2);
    }
	

	// 배송 조회 내역
	public List<DeliveryHistoryVO> AllDeliveryHistory(String mem_id) {
		List<DeliveryHistoryVO> dlist = sqlSession.selectList(NAMESPACE + "AllDeliveryHistory", mem_id);
		return dlist;
	}

	// 년도 별 배송 조회 내역 - map 테스트 하는 중
	public List<DeliveryHistoryVO> getOrdersByMemberAndYear(String mem_id, int year) {
		Map<String, Object> parameters = new HashMap<>();
		parameters.put("mem_id", mem_id);
		parameters.put("year", year);

		List<DeliveryHistoryVO> dlist = sqlSession.selectList(NAMESPACE + "getOrdersByMemberAndYear", parameters);
		return dlist;
	}

	public List<EarnpointVO> getPointList(String mem_id) {
		List<EarnpointVO> elist = sqlSession.selectList(NAMESPACE + "getPointList", mem_id);
		return elist;
	}

	public int updateDoranProfile(MemVO memVO) {
		int result = sqlSession.update(NAMESPACE + "updateDoranProfile", memVO);
		return result;
	}

	public List<CouponVO> getCoupon2(String mem_id) {
		List<CouponVO> cList = sqlSession.selectList(NAMESPACE + "getCoupon2", mem_id);
		return cList;
	}

}
