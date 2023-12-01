package com.shinhan.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shinhan.dto.MemVO;
import com.shinhan.model.MyPageService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("my")
public class MyPageController {
	
	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);
	
	@Autowired
	MyPageService mService;
	
	@GetMapping("myPage.do")
	public String myPage(Model model ,HttpSession session) {
		MemVO loginmem =(MemVO) session.getAttribute("loginmem");
		MemVO mem = mService.getMember(loginmem.getMem_id());
		model.addAttribute("mem",mem);
		return "my/myPage";
	}
	
	@GetMapping("logout.do")
	public String logut(Model model ,HttpSession session) {
		
		return "home";
	}
	

}
