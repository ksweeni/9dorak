package com.shinhan.controller;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
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
import com.shinhan.dto.PayVO;
import com.shinhan.model.WalletService;

@Controller
@RequestMapping("wallet")
public class WalletController {
	
	@Autowired
	WalletService wService;

	private static final Logger logger = LoggerFactory.getLogger(WalletController.class);

	@GetMapping("basket.do")
	public String basket(Model model) {
		List<BasketVO> blist = wService.selectAllBasket();
		model.addAttribute("blist", blist);
		return "wallet/basket";
	}
	
	@GetMapping("pay.do")
	public String pay(Model model) {
		List<PayVO> plist = wService.selectAllPay();
		model.addAttribute("plist", plist);
		return "wallet/pay";
	}
	
	
	
	
	
	
	
	
	
	
	
	

	
	
	


    
    
    
    
    
	@PostMapping("basketEmpty.do")
	public String basketEmpty(Model model) {
		List<BasketVO> blist = wService.selectAllBasket();
		model.addAttribute("blist", blist);
		return "wallet/basketEmpty";
	}
    
    
    
    
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

}
