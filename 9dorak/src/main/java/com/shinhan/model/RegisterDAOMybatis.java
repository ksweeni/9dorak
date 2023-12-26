package com.shinhan.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shinhan.dto.EarnpointVO;
import com.shinhan.dto.MemVO;

@Repository 
public class RegisterDAOMybatis {

	@Autowired
	SqlSession sqlSession; 
	Logger logger = LoggerFactory.getLogger(RegisterDAOMybatis.class);
	String NAMESPACE = "net.firstzone.register.";

	public List<MemVO> selectAll() {
		List<MemVO> mlist = sqlSession.selectList(NAMESPACE + "selectAll");
//		System.out.println(mlist);
//		logger.info("selectAll :  {}", blist.size());
		return mlist;
	}

	public int idCheck(String mem_id) {
		// TODO Auto-generated method stub
	
		return sqlSession.selectOne(NAMESPACE + "idCheck",mem_id);
	}

	public int codeChcek(String mem_code) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE + "codeCheck", mem_code);
	}

	public int inserMember(MemVO mem) {
		// TODO Auto-generated method stub
//		System.out.println(mem);
		return sqlSession.insert(NAMESPACE + "insertMember", mem);
		
	}

	public int PointinsertMember(MemVO mem) {
		// TODO Auto-generated method stub
		return sqlSession.insert(NAMESPACE + "PointinsertMember", mem);
	}

	public int pointUpdate(MemVO codemem) {
		// TODO Auto-generated method stub
		return sqlSession.update(NAMESPACE + "pointUpdate", codemem);
	}

	public int insertEarn(EarnpointVO earn) {
		// TODO Auto-generated method stub
		return sqlSession.insert(NAMESPACE + "insertEarn", earn);
	}

	public MemVO getCodeMem(String mem_code) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE + "getCodeMem", mem_code);
	}





//	public BoardVO selectById(int bno) {
//		BoardVO board = sqlSession.selectOne(NAMESPACE + "selectById", bno);
//		logger.info("selectById :  {}", board.toString());
//		return board;
//	}
//
//	public int updateViewCount(int bno) {
//		int result = sqlSession.update(NAMESPACE + "viewcntIncrement", bno);
//		logger.info("updateViewCount :  {}�� ����", result);
//		return result;
//	}
//
//	public int insert(BoardVO board) {
//		int result = sqlSession.insert(NAMESPACE + "insert", board);
//		logger.info("insert :  {}�� �Է�", result);
//		return result;
//	}
//
//	public int update(BoardVO board) {
//		int result = sqlSession.update(NAMESPACE + "update", board);
//		logger.info("update :  {}�� updated", result);
//		return result;
//	}
//
//	public int delete(int bno) {
//		int result = sqlSession.delete(NAMESPACE + "delete", bno);
//		logger.info("delete :  {}�� ����", result);
//		return result;
//	}

}
