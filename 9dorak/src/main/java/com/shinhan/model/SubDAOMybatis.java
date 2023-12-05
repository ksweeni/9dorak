package com.shinhan.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shinhan.dto.SubVO;

@Repository
public class SubDAOMybatis {

	@Autowired
	SqlSession sqlSession; 
	Logger logger = LoggerFactory.getLogger(SubDAOMybatis.class);
	String NAMESPACE = "net.firstzone.sub.";
	
	public List<SubVO> selectAll() {
		List<SubVO> sublist = sqlSession.selectList(NAMESPACE + "selectAll");
		System.out.println(sublist);
		logger.info("selectAll :  {}", sublist.size());
		return sublist;
	}
}
