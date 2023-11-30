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
		// 지현이누나가 세션에 담는 이름으로 바꿔야함
//		MemVO mem = mService.getMember(session.getAttribute("login_id"));
		MemVO mem = mService.getMember("aaa");
//		System.out.println(mem);
		model.addAttribute("mem",mem);
		
		return "my/myPage";
	}
	

}
