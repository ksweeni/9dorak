package com.shinhan.model;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shinhan.dto.AnnoVO;
import com.shinhan.dto.FaqVO;
import com.shinhan.dto.OneaskVO;

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


	public List<AnnoVO> selectOrderbyView() {
		List<AnnoVO> ylist = sqlSession.selectList(NAMESPACE + "selectOrderbyView");
		return ylist;
	}

	public List<AnnoVO> selectOrderbyNew() {
		List<AnnoVO> ylist = sqlSession.selectList(NAMESPACE + "selectOrderbyNew");
		return ylist;
	}


	public List<FaqVO> selectFaqAll() {
		List<FaqVO> flist = sqlSession.selectList(NAMESPACE + "selectFaqAll");
		return flist;
	}


	public List<OneaskVO> selectOneaskAll() {
		List<OneaskVO> olist = sqlSession.selectList(NAMESPACE + "selectOneaskAll");
		return olist;
	}


	public List<OneaskVO> selectOrderbyNewOneask() {
		List<OneaskVO> olist = sqlSession.selectList(NAMESPACE + "selectOrderbyNewOneask");
		return olist;
	}


	public List<OneaskVO> searchOneask(String oneask_title) {
		List<OneaskVO> olist = sqlSession.selectList(NAMESPACE + "searchOneask", oneask_title);
		return olist;
	}


	public OneaskVO selectBynoOneask(int oneask_no) {
		OneaskVO oneask = sqlSession.selectOne(NAMESPACE + "selectBynoOneask", oneask_no);
		return oneask;
	}


	public int insertOneask(OneaskVO oneask) {
		int result = sqlSession.insert(NAMESPACE + "insertOneask", oneask);
		return result;
	}


	public int updateOneask(OneaskVO oneask) {
		int result = sqlSession.update(NAMESPACE + "updateOneask", oneask);
		return result;
	}


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public int adminNoticeUpdate(AnnoVO anno) {
		int result = sqlSession.update(NAMESPACE + "adminNoticeUpdate", anno);
		return result;
	}


	public int adminNoticeDelete(int anno_no) {
		int result = sqlSession.delete(NAMESPACE + "adminNoticeDelete", anno_no);
		return result;
	}


	
	public int adminNoticeInsert(AnnoVO anno) {
		int result = sqlSession.insert(NAMESPACE + "adminNoticeInsert", anno);
		return result;
	}


	public List<Map<String, Object>> list(AnnoVO annoVO) {
		return sqlSession.selectList(NAMESPACE + "list", annoVO);
		
	}


	public FaqVO selectFaq_no(int faq_no) {
		FaqVO faq = sqlSession.selectOne(NAMESPACE + "selectFaq_no", faq_no);
		return faq;
	}


	public int adminnoticeFaqUpdate(FaqVO faq) {
		int result = sqlSession.update(NAMESPACE + "adminnoticeFaqUpdate", faq);
		return result;
	}


	public int adminnoticeFaqDelete(int faq_no) {
		int result = sqlSession.delete(NAMESPACE + "adminnoticeFaqDelete", faq_no);
		return result;
	}


	public int adminNoticeFaqInsert(FaqVO faq) {
		int result = sqlSession.insert(NAMESPACE + "adminNoticeFaqInsert", faq);
		return result;
	}


	public List<Map<String, Object>> list2(FaqVO faqVO) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + "list2", faqVO);
	}
	 


	

	
	
	

}
