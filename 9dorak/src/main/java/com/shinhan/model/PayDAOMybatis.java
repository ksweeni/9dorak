package com.shinhan.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.shinhan.dto.BasketVO;
import com.shinhan.dto.MemVO;
import com.shinhan.dto.PayVO;
import com.shinhan.dto.PeopleVO;

@Repository
public class PayDAOMybatis {

	@Autowired
	SqlSession sqlSession;
	Logger logger = LoggerFactory.getLogger(PayDAOMybatis.class);
	String NAMESPACE = "net.firstzone.pay.";

	// 결제 삽입
	public int insertPay(PayVO pay) {
		int result = sqlSession.insert(NAMESPACE + "insertPay", pay);
		return result;
	}

	// 결제 총 개수
	public int selectPayCount() {
		return sqlSession.selectOne(NAMESPACE + "selectPayCount");
	}

	public int updatePayStatus(String impUid) {
		return sqlSession.update(NAMESPACE + "updatePayStatus", impUid);
	}

}
