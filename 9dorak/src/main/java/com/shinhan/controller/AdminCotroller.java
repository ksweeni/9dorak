package com.shinhan.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shinhan.dto.ProVO;
import com.shinhan.model.MenuService;

@Controller
@RequestMapping("admin")
public class AdminCotroller {
	
	@Autowired
	MenuService mService;

	private static final Logger logger = LoggerFactory.getLogger(AdminCotroller.class);
	
	@GetMapping("adminMenu.do")
	public String adminMenu(Model model) {
		List<ProVO> mlist = mService.selectAll();
		model.addAttribute("mlist", mlist);
		return "admin/adminMenu";
	}
	
	@GetMapping("adminMember.do")
	public String adminMember() {
		return "admin/adminMember";
	}
	
	@GetMapping("adminOrder.do")
	public String adminOrder() {
		return "admin/adminOrder";
	}
	
	@GetMapping("adminSub.do")
	public String adminSub() {
		return "admin/adminSub";
	}
	
	@GetMapping("adminNotice.do")
	public String adminNotice() {
		return "admin/adminNotice";
	}
	
	@GetMapping("adminEvent.do")
	public String adminEvent() {
		return "admin/adminEvent";
	}
	
	@GetMapping("adminPoint.do")
	public String adminPoint() {
		return "admin/adminPoint";
	}
}
