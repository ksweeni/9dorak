package com.shinhan.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shinhan.dto.ProVO;
import com.shinhan.model.MenuService;
import com.shinhan.model.SubService;

@Controller
@RequestMapping("sub")
public class SubController {
	
	@Autowired
	SubService subService;
	@Autowired
	MenuService mService;

	private static final Logger logger = LoggerFactory.getLogger(SubController.class);

	/*@GetMapping("sub.do")
	public String sub(Model model) {
		List<SubVO> sublist = subService.selectAll();
		model.addAttribute("sublist", sublist);
		return "sub/sub";
	} */
	
	@GetMapping("sub.do")
	public String sub() {
		return "sub/sub";
	}
	
	@GetMapping("subdetail_9sub.do")
	public String subdetail_9sub(Model model, ProVO pro) {
		List<ProVO> sub9allist = subService.selectAllSub9A();
		List<ProVO> sub9bllist = subService.selectAllSub9B();
		model.addAttribute("sub9allist", sub9allist);
		model.addAttribute("sub9bllist", sub9bllist);
		return "sub/subdetail_9sub";
	}
	
	@GetMapping("subdetail_19sub_a.do")
	public String subdetail_19asub(Model model, ProVO pro) {
		List<ProVO> sub19allist = subService.selectAllSub19A();
		model.addAttribute("sub19allist", sub19allist);
		return "sub/subdetail_19sub_a";
	}


	@GetMapping("subdetail_19sub_b.do")
	public String subdetail_19bsub(Model model, ProVO pro) {
		List<ProVO> sub19bllist = subService.selectAllSub19B();
		model.addAttribute("sub19bllist", sub19bllist);
		return "sub/subdetail_19sub_b";
	}
	
	@GetMapping("subOrder.do")
	public String subOrder( @RequestParam("subType") String subType) {
		System.out.println(subType);
		return "wallet/pay";
	}

}
