package com.shinhan.model;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.shinhan.dto.OrderVO;

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

	public List<OrderVO> selectByOrder(int order_no) {
		List<OrderVO> oList = sqlSession.selectList(NAMESPACE + "selectByOrder", order_no);
		return oList;
	}

}
