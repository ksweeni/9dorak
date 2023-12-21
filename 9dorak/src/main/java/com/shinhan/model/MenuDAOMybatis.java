package com.shinhan.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shinhan.dto.MemreviewVO;
import com.shinhan.dto.ProVO;


@Repository 
public class MenuDAOMybatis {

	@Autowired
	SqlSession sqlSession; 
	Logger logger = LoggerFactory.getLogger(MenuDAOMybatis.class);
	String NAMESPACE = "net.firstzone.menu.";

	public List<ProVO> selectAll() {
		List<ProVO> plist = sqlSession.selectList(NAMESPACE + "selectAll");
		//System.out.println(plist);
		//logger.info("selectAll :  {}", plist.size());
		return plist;
	}
	
	public List<ProVO> selectSearchPro(ProVO pro) {
		List<ProVO> plist = sqlSession.selectList(NAMESPACE + "selectSearchPro",pro);
		//logger.info(plist.toString());
		return plist;	
	}

	public List<ProVO> selectOrderbyNew() {
		List<ProVO> plist = sqlSession.selectList(NAMESPACE + "selectOrderbyNew");
		return plist;
	}

	public List<ProVO> selectOrderbyLike() {
		List<ProVO> plist = sqlSession.selectList(NAMESPACE + "selectOrderbyLike");
		return plist;
	}

//	public List<ProVO> searchAllergyCheck(String pro_aller) {
//		List<ProVO> plist = sqlSession.selectList(NAMESPACE + "searchAllergyCheck", pro_aller);
//		return plist;
//	}

	public List<ProVO> selectAllOrder(ProVO pro) {
		List<ProVO> plist = sqlSession.selectList(NAMESPACE + "selectAllOrder", pro);
		return plist;
	}

	public List<ProVO> selectCtgrOrder(ProVO pro) {
		List<ProVO> plist = sqlSession.selectList(NAMESPACE + "selectCtgrOrder", pro);
		return plist;
	}

	public ProVO selectByNo(int pro_no) {
		ProVO pro = sqlSession.selectOne(NAMESPACE + "selectByNo", pro_no);
		return pro;
	}

	public List<ProVO> searchCategoryCheck(String ingre_no) {
		List<ProVO> plist = sqlSession.selectList(NAMESPACE + "searchCategoryCheck", ingre_no);
		return plist;
	}
	
//	public List<Map<String, Object>> selectProReviewTxt(Map<String, Object> map) {
//        List<Map<String, Object>> txtrlist = sqlSession.selectList(NAMESPACE + "selectProReviewTxt", map);
//        //System.out.println("DAO rlist:" + rlist);
//        return txtrlist;
//    }
//	
//	public List<Map<String, Object>> selectProReviewPth(Map<String, Object> map) {
//		List<Map<String, Object>> phtrlist = sqlSession.selectList(NAMESPACE + "selectProReviewPth", map);
//		return phtrlist;
//	}
//	
//	public Map<String, Object> proRevwCnt(int prono) {
//		
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("totCnt", sqlSession.selectOne(NAMESPACE+ "proRevwTotCnt", prono));
//		map.put("phtCnt", sqlSession.selectOne(NAMESPACE+ "proRevwPhtCnt", prono));
//		map.put("txtCnt", sqlSession.selectOne(NAMESPACE+ "proRevwTxtCnt", prono));
//		return map;
//	}
		
	public int selectReserveYn(Map<String, Object> map) {
		return sqlSession.selectOne(NAMESPACE + "selectReserveYn", map);
	}
	
	public int insertReserve(Map<String, Object> map) {
		int result = sqlSession.insert(NAMESPACE + "insertReserve", map);
		return result;
	}
	
	public int deleteReserve(Map<String, Object> map) {
		int result = sqlSession.insert(NAMESPACE + "deleteReserve", map);
		return result;
	}

	public int updateReserve(String pro_no) {
		int result = sqlSession.update(NAMESPACE + "updateProLike", pro_no);
		return result;
	}

	public List<ProVO> searchAllergyCheck(ProVO pro) {
		List<ProVO> plist = sqlSession.selectList(NAMESPACE + "searchAllergyCheck",pro);
		return plist;
	}

//	public List<Map<String, Object>> selectMoaview(int prono) {
//		List<Map<String, Object>> moalist = sqlSession.selectList(NAMESPACE + "selectMoaview", prono);
//		return moalist;
//	}
//
//	public MemreviewVO selectMoaFrist(int prono) {
//		MemreviewVO rev = sqlSession.selectOne(NAMESPACE + "selectMoaFrist", prono);
//		return rev;
//	}
//
//	public MemreviewVO selectMoaSelected(int revno) {
//		MemreviewVO rev = sqlSession.selectOne(NAMESPACE + "selectMoaSelected", revno);
//		return rev;
//	}


}
