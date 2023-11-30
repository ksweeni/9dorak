//package com.shinhan.model;
//
//import java.util.ArrayList;
//import java.util.List;
//
//import org.apache.ibatis.session.SqlSession;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Repository;
//
//
//import com.shinhan.dto.MemVO;
//
//@Repository
//public class RegisterDAOMybatis2 {
//
//	@Autowired
//	SqlSession sqlSession;
//
//	Logger logger = LoggerFactory.getLogger(RegisterDAOMybatis2.class);
//	
//	String namespace="net.firstzone.register.";
//
//
//	public List<MemVO> selectAll() {
//		System.out.println("Asd");
//		List<MemVO> memlist = sqlSession.selectList(namespace+"selectAll");
//		logger.info(getClass().getSimpleName()+":" + memlist.size());
//		System.out.println(memlist);
//		return memlist;
//	}
//
//	
//
//}
