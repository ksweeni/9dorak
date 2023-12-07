package com.shinhan.model;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.shinhan.dto.BasketVO;

@Repository
public class WalletDAOMybatis {

	@Autowired
	SqlSession sqlSession; 
	Logger logger = LoggerFactory.getLogger(WalletDAOMybatis.class);
	String NAMESPACE = "net.firstzone.wallet.";
	
	public List<BasketVO> selectAll() {
		List<BasketVO> blist = sqlSession.selectList(NAMESPACE + "selectAll");
		System.out.println(blist);
		logger.info("selectAll :  {}", blist.size());
		return blist;
	}
}
