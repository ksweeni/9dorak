package com.shinhan.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shinhan.dto.CouponVO;

@Repository
public class CouponDAOMybatis {

	@Autowired
	SqlSession sqlSession; 
	Logger logger = LoggerFactory.getLogger(CouponDAOMybatis.class);
	String NAMESPACE = "net.firstzone.coupon.";
	
	public List<CouponVO> selectAll() {
		List<CouponVO> clist = sqlSession.selectList(NAMESPACE + "selectAll");
		logger.info("selectAll :  {}", clist.size());
		return clist;
	}
}
