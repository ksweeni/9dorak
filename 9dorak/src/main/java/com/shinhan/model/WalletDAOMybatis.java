package com.shinhan.model;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.shinhan.dto.BasketVO;
import com.shinhan.dto.PayVO;

@Repository
public class WalletDAOMybatis {

	@Autowired
	SqlSession sqlSession; 
	Logger logger = LoggerFactory.getLogger(WalletDAOMybatis.class);
	String NAMESPACE = "net.firstzone.wallet.";
	
	// 장바구니 추가
    public int addBasket(BasketVO basket) {
        return sqlSession.insert(NAMESPACE + "addBasket", basket);
    }

    // 장바구니 삭제
    public int deleteBasket(Map<String, Object> parameters) {
        return sqlSession.delete(NAMESPACE + "deleteBasket", parameters);
    }

    // 장바구니 수량 수정
    public int modifyCount(BasketVO basket) {
        return sqlSession.update(NAMESPACE + "modifyCount", basket);
    }

    // mem_id의 장바구니 목록
    public List<BasketVO> getBasket(String mem_id) {
        return sqlSession.selectList(NAMESPACE + "getBasket", mem_id);
    }

    // mem_id의 장바구니 확인
    public List<BasketVO> checkBasket(String mem_id) {
        return sqlSession.selectList(NAMESPACE + "checkBasket", mem_id);
    }

	
	
	
	
	
	
	
	
	
	
	
	
	
//	// 장바구니에 상품 담기
//	public int insertPro(BasketVO basket) {
//		int result = sqlSession.insert(NAMESPACE + "insertPro", basket);
//		return result;
//	}
	
	

	
	
	
	// 장바구니 select all
	public List<BasketVO> selectAllBasket() {
		List<BasketVO> blist = sqlSession.selectList(NAMESPACE + "selectAllBasket");
		System.out.println(blist);
		return blist;
	}
	
	// 결제하기 select all
	public List<PayVO> selectAllPay() {
		List<PayVO> plist = sqlSession.selectList(NAMESPACE + "selectAllPay");
		System.out.println(plist);
		logger.info("selectAllPay : {}", plist.size());
		return plist;
	}
	
}
