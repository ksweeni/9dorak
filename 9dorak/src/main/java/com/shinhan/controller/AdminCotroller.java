package com.shinhan.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shinhan.dto.EventVO;
import com.shinhan.dto.MemVO;
import com.shinhan.dto.OrderVO;
import com.shinhan.dto.ProVO;
import com.shinhan.dto.SubVO;
import com.shinhan.model.EventService;
import com.shinhan.model.MemService;
import com.shinhan.model.MenuService;
import com.shinhan.model.OrderService;
import com.shinhan.model.SubService;

@Controller
@RequestMapping("admin")
public class AdminCotroller {
	
	@Autowired
	MenuService mService;
	@Autowired
	MemService memService;
	@Autowired
	OrderService orderService;
	@Autowired
	SubService subService;
	@Autowired
	EventService eService;

	private static final Logger logger = LoggerFactory.getLogger(AdminCotroller.class);
	
	@GetMapping("adminMenu.do")
	public String adminMenu(Model model) {
		List<ProVO> mlist = mService.selectAll();
		model.addAttribute("mlist", mlist);
		return "admin/adminMenu";
	}
	
	@GetMapping("adminMember.do")
	public String adminMember(Model model) {
		List<MemVO> memlist = memService.selectAll();
		model.addAttribute("memlist", memlist);
		return "admin/adminMember";
	}
	
	@GetMapping("adminOrder.do")
	public String adminOrder(Model model) {
		List<OrderVO> orderlist = orderService.selectAll();
		model.addAttribute("orderlist", orderlist);
		return "admin/adminOrder";
	}
	
	@GetMapping("adminSub.do")
	public String adminSub(Model model) {
		List<SubVO> sublist = subService.selectAll();
		model.addAttribute("sublist", sublist);
		return "admin/adminSub";
	}
	
	@GetMapping("adminNotice.do")
	public String adminNotice() {
		return "admin/adminNotice";
	}
	
	@GetMapping("adminEvent.do")
	public String adminEvent(Model model) {
		List<EventVO> elist = eService.selectAll();
		model.addAttribute("elist", elist);
		return "admin/adminEvent";
	}
	
	@GetMapping("adminPoint.do")
	public String adminPoint() {
		return "admin/adminPoint";
	}
}
