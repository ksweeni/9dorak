package com.shinhan.model;

import java.sql.Timestamp;
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
public class WalletDAOMybatis {

	@Autowired
	SqlSession sqlSession; 
	Logger logger = LoggerFactory.getLogger(WalletDAOMybatis.class);
	String NAMESPACE = "net.firstzone.wallet.";
	
	// 장바구니 select all
	public List<BasketVO> selectAllBasket() {
		List<BasketVO> blist = sqlSession.selectList(NAMESPACE + "selectAllBasket");
		System.out.println(blist);
		logger.info("selectAllBasket :  {}", blist.size());
		return blist;
	}
	
	// 결제하기 select all
	public List<PayVO> selectAllPay() {
		List<PayVO> plist = sqlSession.selectList(NAMESPACE + "selectAllPay");
		System.out.println(plist);
		logger.info("selectAllPay : {}", plist.size());
		return plist;
	}
	
    // 장바구니 삭제
    public int deleteBasket(String mem_id, int pro_no) {
        int result = sqlSession.delete(NAMESPACE + "deleteBasket", Map.of("mem_id", mem_id, "pro_no", pro_no));
        return result;
    }

    // 장바구니 수량 수정
    public int modifyCount(BasketVO basket) {
        int result = sqlSession.update(NAMESPACE + "modifyCount", basket);
        return result;
    }

    // mem_id의 장바구니 목록
    public List<BasketVO> getBasket(String mem_id) {
        return sqlSession.selectList(NAMESPACE + "getBasket", mem_id);
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    // 지인 존재 여부 검색
    public PeopleVO peopleCheck(String mem_id) {
    	PeopleVO people = sqlSession.selectOne(NAMESPACE + "peopleCheck", mem_id);
    	return people;
    }
    
    // 지인이 있을 때 장바구니 검색
    public List<Map<String, Object>> peopleBasket(String mem_id) {
    	List<Map<String, Object>> blist = sqlSession.selectList(NAMESPACE + "peopleBasket", mem_id);
    	return blist;
    }
    
    // 지인이 없을 때 장바구니 검색
    public List<Map<String, Object>> noPeopleBasket(String mem_id) {
    	List<Map<String, Object>> blist = sqlSession.selectList(NAMESPACE + "noPeopleBasket", mem_id);
    	return blist;
    }
    
    // 상품 이미지 1개만 가져오기
    public String getProImage(int pro_no) {
    	String image = sqlSession.selectOne(NAMESPACE + "getProImage", pro_no);
    	return image;
    }
    
    // 회원 아이디 정보
    public MemVO checkMember(String mem_id) {
		MemVO member = sqlSession.selectOne(NAMESPACE + "checkMember", mem_id);
		return member;
	}
    
    // 아이디-상품 장바구니 존재 여부 확인
    public List<BasketVO> checkBasket(String mem_id, int pro_no) {
        Map<String, Object> params = new HashMap<>();
        params.put("mem_id", mem_id);
        params.put("pro_no", pro_no);
        return sqlSession.selectList(NAMESPACE + "checkBasket", params);
    }
    
    // 장바구니에 상품 추가
    public int addBasket(BasketVO basket) {
    	return sqlSession.insert(NAMESPACE + "addBasket", basket);
    }
    
    // 장바구니 비었는지 여부 확인
    public List<BasketVO> emptyBasket(String mem_id) {
        Map<String, Object> params = new HashMap<>();
        params.put("mem_id", mem_id);
        return sqlSession.selectList(NAMESPACE + "emptyBasket", params);
    }
}
