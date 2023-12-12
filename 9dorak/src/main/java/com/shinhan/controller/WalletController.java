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
	
	
	
	
	
	
	
	
	
	
	
	

	
	
	

    @PostMapping("deleteBasket")
    public String deleteBasket(@RequestParam("mem_id") String mem_id,
                               @RequestParam("pro_no") int pro_no) {
        wService.deleteBasket(mem_id, pro_no);
        return "wallet/basket";
    }

    @PostMapping("modifyCount")
    public String modifyCount(@RequestParam("mem_id") String mem_id,
                              @RequestParam("pro_no") int pro_no,
                              @RequestParam("basket_pro_count") int basket_pro_count) {
        BasketVO basket = new BasketVO(pro_no, null, basket_pro_count, mem_id);
        wService.modifyCount(basket);
        return "wallet/basket";
    }
    
    @PostMapping("getBasket")
    public String getBasket(@RequestParam("mem_id") String mem_id, Model model) {
        List<BasketVO> basketList = wService.getBasket(mem_id);
        model.addAttribute("basketList", basketList);
        return "wallet/basket";
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
        basket.setBasket_date(new Timestamp(System.currentTimeMillis()));
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
