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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shinhan.dto.DoranVO;
import com.shinhan.dto.ProVO;
import com.shinhan.model.DoranService;
import com.shinhan.model.MenuService;


@Controller
@RequestMapping("menu")
public class MenuController {

	@Autowired
	MenuService mService;

	private static final Logger logger = LoggerFactory.getLogger(MenuController.class);

	@GetMapping("menu.do")
	public String menu(Model model) {
		List<ProVO> plist = mService.selectAll();
		model.addAttribute("mlist", plist);
		return "menu/menu";
	}
}
