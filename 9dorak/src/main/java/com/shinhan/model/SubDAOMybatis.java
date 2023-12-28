package com.shinhan.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shinhan.dto.BasketVO;
import com.shinhan.dto.ProVO;
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

	public List<ProVO> selectAllSub9A() {
		List<ProVO> sub9alist = sqlSession.selectList(NAMESPACE + "selectAllSub9A");
		return sub9alist;
	}

	public List<ProVO> selectAllSub9B() {
		List<ProVO> sub9blist = sqlSession.selectList(NAMESPACE + "selectAllSub9B");
		return sub9blist;
	}

	public List<ProVO> selectAllSub19A() {
		List<ProVO> sub19alist = sqlSession.selectList(NAMESPACE + "selectAllSub19A");
		return sub19alist;
	}

	public List<ProVO> selectAllSub19B() {
		List<ProVO> sub19blist = sqlSession.selectList(NAMESPACE + "selectAllSub19B");
		return sub19blist;
	}
	
	
	
	
	
	
	public int insertSub(SubVO sub) {
    	return sqlSession.insert(NAMESPACE + "insertSub", sub);
    }

	public int selectSubNum() {
		int result = sqlSession.selectOne(NAMESPACE + "selectSubNum");
		return result;
	}
	
	public SubVO selectSubNo(int sub_no) {
		SubVO sub = sqlSession.selectOne(NAMESPACE + "selectSubNo", sub_no);
		return sub;
	}
	
	public int deleteSub(int sub_no) {
		int result = sqlSession.delete(NAMESPACE + "deleteSub", sub_no);
		return result;
	}
	
	public int updateSub(SubVO sub) {
		int result = sqlSession.update(NAMESPACE + "updateSub", sub);
		return result;
	}
}
