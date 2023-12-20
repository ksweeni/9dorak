package com.shinhan.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shinhan.dto.MemVO;
import com.shinhan.dto.ProVO;

@Repository 
public class MemDAOMybatis {
	
	@Autowired
	SqlSession sqlSession; 
	Logger logger = LoggerFactory.getLogger(MemDAOMybatis.class);
	String NAMESPACE = "net.firstzone.mem.";
	
	public List<MemVO> selectAll() {
		List<MemVO> memlist = sqlSession.selectList(NAMESPACE + "selectAll");
		return memlist;
	}

}
