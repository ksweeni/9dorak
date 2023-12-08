package com.shinhan.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shinhan.dto.AnnoVO;
import com.shinhan.dto.ChallengeVO;

@Repository
public class YomoDAOMybatis {
	
	@Autowired
	SqlSession sqlSession;
	Logger logger = LoggerFactory.getLogger(YomoDAOMybatis.class);
	String NAMESPACE = "net.firstzone.yomo.";

	
	public List<AnnoVO> selectAll() {
		List<AnnoVO> ylist = sqlSession.selectList(NAMESPACE + "selectAll");
		/* logger.info("selectAll:{}", ylist.size()); */
		return ylist;
	}


	public AnnoVO selectByno(int anno_no) {
		AnnoVO annoti = sqlSession.selectOne(NAMESPACE + "selectByno", anno_no);
		return annoti;
	}


	public List<AnnoVO> searchYomo(String anno_title) {
		List<AnnoVO> ylist = sqlSession.selectList(NAMESPACE + "searchYomo", anno_title);
		return ylist;
	}
}
