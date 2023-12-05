package com.shinhan.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shinhan.dto.AnnoVO;

@Repository
public class YomoDAOMybatis {
	
	@Autowired
	SqlSession sqlSession;
	Logger logger = LoggerFactory.getLogger(YomoDAOMybatis.class);
	String NAMESPACE = "net.firstzone.yomo.";

	
	public List<AnnoVO> selectAll() {
		List<AnnoVO> ylist = sqlSession.selectList(NAMESPACE + "selectAll");
		logger.info("selectAll:{}", ylist.size());
		return ylist;
	}
}
