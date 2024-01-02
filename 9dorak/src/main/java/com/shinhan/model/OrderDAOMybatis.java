package com.shinhan.model;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.shinhan.dto.OrderVO;
import com.shinhan.dto.OrderdetailVO;

@Repository 
public class OrderDAOMybatis {
	
	@Autowired
	SqlSession sqlSession; 
	Logger logger = LoggerFactory.getLogger(OrderDAOMybatis.class);
	String NAMESPACE = "net.firstzone.order.";
	
	public List<OrderVO> selectAll() {
		List<OrderVO> orderlist = sqlSession.selectList(NAMESPACE + "selectAll");
		return orderlist;
	}

	public List<OrderVO> searchadminOrder(String mem_id) {
		List<OrderVO> olist = sqlSession.selectList(NAMESPACE + "searchadminOrder", mem_id);
		return olist;
	}

	public List<OrderVO> selectByOrderDetail(int order_no) {
		List<OrderVO> oList = sqlSession.selectList(NAMESPACE + "selectByOrderDetail", order_no);
		return oList;
	}

	public int deleteOrder(int order_no) {
		int result = sqlSession.delete(NAMESPACE + "deleteOrder", order_no);
		return result;
	}
	
	public OrderVO orderIDCheck(int order_no) {
		OrderVO order = sqlSession.selectOne(NAMESPACE + "orderIDCheck", order_no);
		return order;
	}

	public List<OrderdetailVO> orderProNoCheck(int order_no) {
		List<OrderdetailVO> orderdetail = sqlSession.selectList(NAMESPACE + "orderProNoCheck", order_no);
		return orderdetail;
	}

	public List<OrderVO> selectByOrder(int order_no) {
		List<OrderVO> oList = sqlSession.selectList(NAMESPACE + "selectByOrderDetail", order_no);
		return oList;
	}

	public int updateOrder(OrderVO order) {
		int result = sqlSession.update(NAMESPACE + "updateOrder", order);
		return result;
	}


	public List<OrderVO> selectMostList() {
		List<OrderVO> olist =  sqlSession.selectList(NAMESPACE + "selectMostList");
		return olist;
	}
}
