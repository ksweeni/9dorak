package com.shinhan.controller;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.shinhan.dto.BasketVO;
import com.shinhan.dto.MemDeliveryVO;
import com.shinhan.dto.MemVO;
import com.shinhan.dto.PayVO;
import com.shinhan.model.WalletService;

@Controller
@RequestMapping("wallet")
public class WalletController {
	
	@Autowired
	WalletService wService;

	private static final Logger logger = LoggerFactory.getLogger(WalletController.class);

//	@GetMapping("basket.do")
//	public String basket(Model model) {
//		List<BasketVO> blist = wService.selectAllBasket();
//		model.addAttribute("blist", blist);
//		return "wallet/basket";
//	}
	
	@GetMapping("pay.do")
	public String pay(Model model) {
		List<PayVO> plist = wService.selectAllPay();
		model.addAttribute("plist", plist);
		return "wallet/pay";
	}
	
	
	
	
	
	
	// 지인 검색
	
	
	
	
	
	

    // 회원이 담은 상품 목록
	@GetMapping("basket.do")
	public String basket(Model model, HttpSession session) {
		MemVO loginmem = (MemVO)session.getAttribute("loginmem");
		MemVO member = wService.checkMember(loginmem.getMem_id());
		List<BasketVO> blist = wService.emptyBasket(loginmem.getMem_id());
		
		// 날짜 형식 변경
		List<Map<String, String>> formattedDates = new ArrayList<>();
		for (BasketVO basket : blist) {
		    Timestamp basketDate = basket.getBasket_date();
		    SimpleDateFormat dateFormat = new SimpleDateFormat("yy년 MM월 dd일");
		    String formattedDate = dateFormat.format(new Date(basketDate.getTime()));
		    
		    Map<String, String> formattedDateMap = new HashMap<>();
	        formattedDateMap.put("formattedDate", formattedDate);
	        formattedDates.add(formattedDateMap);
		}
		
		model.addAttribute("mem", member);
		model.addAttribute("blist", blist);
		model.addAttribute("formattedDates", formattedDates);
		
		return "wallet/basket";
	}
    
    // 장바구니에 이미 해당 아이디-상품 존재 여부 
    @PostMapping("checkBasket.do")
    @ResponseBody
    public Map<String, Object> checkBasket(@RequestParam("mem_id") String mem_id, @RequestParam("pro_no") int pro_no) {
        Map<String, Object> response = new HashMap<>();
        List<BasketVO> basketList = wService.checkBasket(mem_id, pro_no);
        
        if (basketList != null && !basketList.isEmpty()) {
        	response.put("success", false);
        } else {
        	response.put("success", true);
        }
        return response;
    }
    
    // 메뉴 상세 페이지에서 구도락 담기
    @PostMapping("addBasket.do")
    public @ResponseBody Map<String, Object> addBasket(Model model, BasketVO basket, HttpServletRequest request) {
        Map<String, Object> response = new HashMap<>();
        int result = wService.addBasket(basket);
        
        if (result > 0) {
        	response.put("success", true);
        } else {
        	response.put("success", false);
        }
        return response;
    }
    
    // 장바구니 비어있는지 여부 판별하여, 불 켜기
    @PostMapping("emptyBasket.do")
    @ResponseBody
    public Map<String, Object> emptyBasket(@RequestParam("mem_id") String mem_id) {
    	Map<String, Object> response = new HashMap<>();
    	List<BasketVO> basketList = wService.emptyBasket(mem_id);
    	
    	if (basketList != null && !basketList.isEmpty()) {
        	response.put("success", true);
        } else {
        	response.put("success", false);
        }
        return response;
    }
}
