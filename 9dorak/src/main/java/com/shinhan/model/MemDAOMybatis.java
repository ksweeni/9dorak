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

	public MemVO selectByid(String mem_id) {
		MemVO mem = sqlSession.selectOne(NAMESPACE + "selectByid", mem_id);
		return mem;
	}

	public int updateMem(MemVO mem) {
		int result = sqlSession.update(NAMESPACE + "updateMem", mem);
		return result;
	}

	public int deleteMem(String mem_id) {
		int result = sqlSession.delete(NAMESPACE + "deleteMem", mem_id);
		return result;
	}

	public int insertMem(MemVO mem) {
		int result = sqlSession.insert(NAMESPACE + "insertMem", mem);
		return result;
	}

}
