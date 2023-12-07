package com.shinhan.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shinhan.dto.BasketVO;
import com.shinhan.dto.EventVO;
import com.shinhan.model.EventService;
import com.shinhan.model.WalletService;

@Controller
@RequestMapping("event")
public class WalletController {
	@Autowired
	WalletService wService;

	private static final Logger logger = LoggerFactory.getLogger(WalletController.class);

	@GetMapping("basket.do")
	public String basket(Model model) {
		List<BasketVO> blist = wService.selectAll();
		model.addAttribute("blist", blist);
		return "wallet/basket";
	}

}
