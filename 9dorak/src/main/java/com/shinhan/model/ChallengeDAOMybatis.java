package com.shinhan.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shinhan.dto.ChallengeVO;

@Repository
public class ChallengeDAOMybatis {

	@Autowired
	SqlSession sqlSession; 
	Logger logger = LoggerFactory.getLogger(ChallengeDAOMybatis.class);
	String NAMESPACE = "net.firstzone.challenge.";
	
	public List<ChallengeVO> selectAll() {
		List<ChallengeVO> chlist = sqlSession.selectList(NAMESPACE + "selectAll");
		System.out.println(chlist);
		logger.info("selectAll :  {}", chlist.size());
		return chlist;
	}
}
