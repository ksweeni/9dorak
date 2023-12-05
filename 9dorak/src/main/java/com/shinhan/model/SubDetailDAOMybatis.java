package com.shinhan.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shinhan.dto.SubdetailVO;

@Repository
public class SubDetailDAOMybatis {

	@Autowired
	SqlSession sqlSession; 
	Logger logger = LoggerFactory.getLogger(SubDetailDAOMybatis.class);
	String NAMESPACE = "net.firstzone.subdetail.";
	
	public List<SubdetailVO> selectAll() {
		List<SubdetailVO> subdetaillist = sqlSession.selectList(NAMESPACE + "selectAll");
		System.out.println(subdetaillist);
		logger.info("selectAll :  {}", subdetaillist.size());
		return subdetaillist;
	}
}
