package com.shinhan.controller;

import java.util.Arrays;
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
import com.shinhan.dto.CouponVO;
import com.shinhan.dto.MemDeliveryVO;
import com.shinhan.dto.MemVO;
import com.shinhan.dto.PayVO;
import com.shinhan.dto.PeopleVO;
import com.shinhan.model.MyPageService;
import com.shinhan.model.WalletService;

@Controller
@RequestMapping("wallet")
public class WalletController {
	
	@Autowired
	WalletService wService;


	@Autowired
	MyPageService mService;
	private static final Logger logger = LoggerFactory.getLogger(WalletController.class);

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	@GetMapping("pay.do")
//	public String pay(Integer[] pro_no, String[] pro_name, Integer[] total_amount, Integer[] quantity,  
//			Model model , HttpSession session) {
//		System.out.println(Arrays.toString(pro_name));
//		System.out.println(Arrays.toString(total_amount));
//		System.out.println(Arrays.toString(quantity));
//		
//		MemVO mem = (MemVO) session.getAttribute("loginmem");
//	
//		List<PayVO> plist = wService.selectAllPay(pro_no, quantity, mem);
//		
//		
//		model.addAttribute("plist", plist);
//		if (session.getAttribute("loginmem") == null) {
//			return "redirect:/login/loginForm.do";
//		}
//		
//		List<CouponVO> clist = mService.getCoupon(mem.getMem_id());
//		List<MemDeliveryVO> dlist = mService.getDelivery(mem.getMem_id());
//		System.out.println(clist);
//		model.addAttribute("clist", clist);
//		model.addAttribute("mem", mem);
//		model.addAttribute("dlist", dlist);
//		return "wallet/pay";
//	}
//	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// 장바구니 삭제
	@PostMapping("deleteBasket.do")
	@ResponseBody
	public String deleteBasket(BasketVO basket) {
		System.out.println(basket);
		int result = wService.deleteBasket(basket);
		String flag;
		
		if (result > 0) {
        	flag="성공!";
        } else {
        	flag="실패!";
        }
        return flag;
	}

    // 장바구니 수량 변경
    @PostMapping("updateBasket.do")
    @ResponseBody
    public String updateBasket(BasketVO basket) {
    	System.out.println(basket);
    	int result = wService.updateBasket(basket);
    	String flag;
    	
    	if (result > 0) {
        	flag="성공!";
        } else {
        	flag="실패!";
        }
        return flag;
    }
	
    // 회원이 담은 상품 목록
    @GetMapping("basket.do")
	public String basket(Model model, HttpSession session) {
		MemVO loginmem = (MemVO)session.getAttribute("loginmem");
		MemVO member = wService.checkMember(loginmem.getMem_id());
		List<BasketVO> blist = wService.emptyBasket(loginmem.getMem_id());
		List<PeopleVO> people = wService.peopleCheck(loginmem.getMem_id());
		List<Map<String, Object>> basket;
		
		if(people == null || people.isEmpty()) {
			basket = wService.noPeopleBasket(loginmem.getMem_id());
		} else {
			basket = wService.allPeopleBasket(loginmem.getMem_id());
		}
		
		model.addAttribute("mem", member);
		model.addAttribute("blist", blist);
		model.addAttribute("people", people);
		model.addAttribute("basket", basket);
		
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
    
    // 장바구니 비어있는지 여부 판별하여 header 장바구니 불 켜기
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