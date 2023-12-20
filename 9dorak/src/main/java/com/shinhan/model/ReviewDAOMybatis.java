package com.shinhan.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shinhan.dto.ProVO;


@Repository 
public class ReviewDAOMybatis {

	@Autowired
	SqlSession sqlSession; 
	Logger logger = LoggerFactory.getLogger(ReviewDAOMybatis.class);
	String NAMESPACE = "net.firstzone.menu.";

	public List<ProVO> selectAll() {
		List<ProVO> plist = sqlSession.selectList(NAMESPACE + "selectAll");
		//System.out.println(plist);
		//logger.info("selectAll :  {}", plist.size());
		return plist;
	}
	

}
