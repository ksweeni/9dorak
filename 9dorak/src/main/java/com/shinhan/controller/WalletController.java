package com.shinhan.controller;

import java.util.List;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.shinhan.dto.BasketVO;
import com.shinhan.dto.PayVO;
import com.shinhan.model.WalletService;
import java.sql.Timestamp;
import java.util.Date;

@Controller
@RequestMapping("wallet")
public class WalletController {
	@Autowired
	WalletService wService;

	private static final Logger logger = LoggerFactory.getLogger(WalletController.class);

	@PostMapping("/add")
    @ResponseBody
    public String addBasket(@RequestBody BasketVO basket) {
        int result = wService.addBasket(basket);
        return result > 0 ? "추가 성공" : "추가 실패";
    }
	
	 @PostMapping("/delete")
	 @ResponseBody
	 public String deleteBasket(@RequestParam String mem_id, @RequestParam int pro_no) {
	      int result = wService.deleteBasket(Map.of("mem_id", mem_id, "pro_no", pro_no));
	      return result > 0 ? "제거 성공" : "제거 실패";
	 }
	 
	 @PostMapping("/modifyCount")
	 @ResponseBody
	 public String modifyCount(@RequestBody BasketVO basket) {
	    int result = wService.modifyCount(basket);
	    return result > 0 ? "수량 변경 완료" : "수량 변경 실패";
	 }
	
	 @GetMapping("/getBasket/{mem_id}")
	    public String getBasket(@PathVariable String mem_id, Model model) {
	        List<BasketVO> basketList = wService.getBasket(mem_id);
	        model.addAttribute("basketList", basketList);
	        return "wallet/basket"; 
	    }
	
	 @GetMapping("/checkBasket/{mem_id}")
	    @ResponseBody
	    public String checkBasket(@PathVariable String mem_id) {
	        List<BasketVO> basketList = wService.checkBasket(mem_id);
	        return basketList.isEmpty() ? "장바구니가 비었숩니당" : "장바구니에 도시락이 있네요!";
	    }
	
	
	
	
	
	
	
	
	
	
	
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

	
	
//	// 장바구니 담기 중... ㅜㅜ
//	@PostMapping("basket.do")
//	public String addToCart(@ModelAttribute("basket") BasketVO basket, Model model) {
//		int result = wService.insertPro(basket);
//
//		if (result > 0) {
//			model.addAttribute("successMessage", "장바구니에 담았습니당!");
//		} else {
//			model.addAttribute("errorMessage", "ㅠㅠ 장바구니 실패");
//		}
//
//		return "redirect:wallet/basket" + basket.getPro_no();
//	}
	



//	@RequestMapping(value = "basket.do", method = {RequestMethod.POST})
//	@ResponseBody
//	public String addToCart(@RequestBody Map<String, Integer> productInfo) {
//	    int pro_no = productInfo.get("pro_no");
//	    
//	    BasketVO basket = new BasketVO();
//	    basket.setPro_no(pro_no);
//	    basket.setBasket_date((java.sql.Date) new Date());
//	    basket.setBasket_pro_count(1);
//	    basket.setMem_id(null);
//	    int result = wService.insertPro(basket);
//
//	    if (result > 0) {
//	        return "장바구니 성공!";
//	    } else {
//	        return "장바구니 실패ㅜㅜ장바구니 실패ㅜㅜ";
//	    }
//	}







}
