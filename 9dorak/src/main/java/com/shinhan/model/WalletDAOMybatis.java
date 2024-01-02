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
import com.shinhan.dto.OrderVO;
import com.shinhan.dto.OrderdetailVO;
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
		logger.info("selectAllBasket :  {}", blist.size());
		return blist;
	}
	
	// 결제하기 select all
	public List<PayVO> selectAllPay() {
		List<PayVO> plist = sqlSession.selectList(NAMESPACE + "selectAllPay");
		return plist;
	}
	
	public PayVO selectPay(int order_no) {
		PayVO pay = sqlSession.selectOne(NAMESPACE + "selectPay", order_no);
		return pay;
	}

    // mem_id의 장바구니 목록
    public List<BasketVO> getBasket(String mem_id) {
        return sqlSession.selectList(NAMESPACE + "getBasket", mem_id);
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    // 장바구니 삭제
    public int deleteBasket(BasketVO basket) {
        int result = sqlSession.delete(NAMESPACE + "deleteBasket", basket);
        return result;
    }
    
    // 장바구니 수량 수정
    public int updateBasket(BasketVO basket) {
        int result = sqlSession.update(NAMESPACE + "updateBasket", basket);
        return result;
    }
    
    public List<PeopleVO> peopleCheck(String mem_id) {
        List<PeopleVO> people = sqlSession.selectList(NAMESPACE + "peopleCheck", mem_id);
        return people;
    }
    
    // 나 + 지인 장바구니 검색
    public List<Map<String, Object>> allPeopleBasket(String mem_id) {
    	List<Map<String, Object>> blist = sqlSession.selectList(NAMESPACE + "allPeopleBasket", mem_id);
    	return blist;
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

	public List<OrderVO> getOrderList(int order_no) {
		   return sqlSession.selectList(NAMESPACE + "getOrderList", order_no);
	}
	
	// 주문 테이블 insert
	public int insertOrder(OrderVO order) {
		int result = sqlSession.insert(NAMESPACE + "insertOrder", order);
		System.out.println(order);
		return result;
	}
	
	// 마지막 주문 번호 찾기
	public int selectOrderNum() {
		int result = sqlSession.selectOne(NAMESPACE + "selectOrderNum");
		return result;
	}
	
	// 주문 디테일 테이블 insert
	public int insertOrderDetail(OrderdetailVO orderDetail) {
		return sqlSession.insert(NAMESPACE + "insertOrderDetail", orderDetail);
	}
	
	// 매출 내역 업데이트
	public int updateSales(PayVO pay) {
		int result = sqlSession.update(NAMESPACE + "updateSales", pay);
		return result;
	}
	
	// 매출 내역 삭제
	public int deleteSales(int order_no) {
		int result = sqlSession.delete(NAMESPACE + "deleteSales", order_no);
		return result;
	}

	public int deleteBasketPay(String mem_id, int pro_no) {
	    int result = sqlSession.delete(NAMESPACE + "deleteBasketPay", new BasketVO(mem_id, pro_no)); // BasketVO 객체 생성 및 전달
	    return result;
	}

}
