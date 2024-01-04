package com.shinhan.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.shinhan.dto.BasketVO;
import com.shinhan.dto.MemVO;
import com.shinhan.dto.OrderVO;
import com.shinhan.dto.OrderdetailVO;
import com.shinhan.dto.PayVO;
import com.shinhan.dto.PeopleVO;

@Repository
public class PayDAOMybatis {

	@Autowired
	SqlSession sqlSession;
	Logger logger = LoggerFactory.getLogger(PayDAOMybatis.class);
	String NAMESPACE = "net.firstzone.pay.";

	// 결제 삽입
	public int insertPay(PayVO pay) {
		int result = sqlSession.insert(NAMESPACE + "insertPay", pay);
		return result;
	}

	// 결제 총 개수
	public int selectPayCount() {
		return sqlSession.selectOne(NAMESPACE + "selectPayCount");
	}

	public int updatePayStatus(String impUid) {
		return sqlSession.update(NAMESPACE + "updatePayStatus", impUid);
	}

	
	// 주문테이블 인서트
	public int subOrderInsert(OrderVO order) {
		// TODO Auto-generated method stub
		return sqlSession.insert(NAMESPACE + "subOrderInsert", order);
	}

	public int subOrderDetailInsert(OrderdetailVO orderdetail) {
		// TODO Auto-generated method stub
		return sqlSession.insert(NAMESPACE + "subOrderDetailInsert", orderdetail);
	}

	public int updateOrder_no(MemVO mem) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE + "updateOrder_no",mem);
	}

	public int updateOrder(int order_no) {
		return sqlSession.update(NAMESPACE + "updateOrder", order_no);
	}
	public PayVO statusCheck(int order_no) {
		return sqlSession.selectOne(NAMESPACE + "statusCheck", order_no);
	}

	public int updateOrderStatus() {
		
		return sqlSession.update(NAMESPACE + "updateOrderStatus");
	}

}
