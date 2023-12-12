package com.shinhan.controller;

import java.sql.Date;
import java.util.Calendar;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	
	
	
	
	
    @PostMapping("addBasket")
    public String addBasket(@RequestParam("pro_no") int pro_no,
                            @RequestParam("basket_pro_count") int basket_pro_count,
                            @RequestParam("mem_id") String mem_id) {
        java.sql.Date currentDate = new java.sql.Date(Calendar.getInstance().getTime().getTime());
        BasketVO basket = new BasketVO(pro_no, currentDate, basket_pro_count, mem_id);
        wService.addBasket(basket);
        return "wallet/basket";
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
