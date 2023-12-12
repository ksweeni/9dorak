package com.shinhan.controller;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
	
	@PostMapping("pay.do")
	public String pay(Model model) {
		List<PayVO> plist = wService.selectAllPay();
		model.addAttribute("plist", plist);
		return "wallet/pay";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	@PostMapping("/wallet/basketOperation")
	@ResponseBody
	public Map<String, Object> basketOperation(
	        @RequestParam("pro_no") int pro_no,
	        @RequestParam("basket_pro_count") int basket_pro_count,
	        @RequestParam("mem_id") String mem_id) {

	    // Perform the necessary operations (check if the product exists, add it to the basket, etc.)

	    Map<String, Object> response = new HashMap<>();
	    response.put("success", true);
	    response.put("message", "Basket operation completed successfully");
	    return response;
	}

	
	
	
	
	
	
	
	@PostMapping("addBasket")
	@ResponseBody
	public Map<String, Object> addBasket(@RequestParam("pro_no") int pro_no,
	                                     @RequestParam("basket_date") Timestamp basket_date,
	                                     @RequestParam("basket_pro_count") int basket_pro_count,
	                                     @RequestParam("mem_id") String mem_id) {

	    Timestamp date = new Timestamp(System.currentTimeMillis());
	    BasketVO basket = new BasketVO(pro_no, date, basket_pro_count, mem_id);
	    wService.addBasket(basket);

	    Map<String, Object> response = new HashMap<>();
	    response.put("success", true);
	    response.put("message", "Basket updated successfully");
	    return response;
	}

	
	
	
//    @PostMapping("addBasket")
//    public String addBasket(@RequestParam("pro_no") int pro_no,
//                            @RequestParam("basket_pro_count") int basket_pro_count,
//                            @RequestParam("mem_id") String mem_id) {
//        java.sql.Date currentDate = new java.sql.Date(Calendar.getInstance().getTime().getTime());
//        BasketVO basket = new BasketVO(pro_no, currentDate, basket_pro_count, mem_id);
//        wService.addBasket(basket);
//        return /;
//    }

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
    public String getBasket(@RequestParam("mem_id") String memId, Model model) {
        List<BasketVO> basketList = wService.getBasket(memId);
        model.addAttribute("basketList", basketList);
        return "wallet/basket";
    }

    @PostMapping("checkBasket")
    public String checkBasket(@RequestParam("mem_id") String memId, Model model) {
        int basketCount = wService.checkBasket(memId);
        model.addAttribute("basketCount", basketCount);
        return "wallet/basket";
    }

}
