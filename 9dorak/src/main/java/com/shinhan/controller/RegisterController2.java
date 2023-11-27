//package com.shinhan.controller;
//
//import java.text.DateFormat;
//import java.util.Date;
//import java.util.List;
//import java.util.Locale;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//import com.shinhan.dto.MemVO;
//import com.shinhan.model.RegisterService2;
//
///**
// * Handles requests for the application home page.
// */
//
//@Controller
//@RequestMapping("/register")
//public class RegisterController2 {
//	
//	private static final Logger logger = LoggerFactory.getLogger(RegisterController2.class);
//	
//	@Autowired
//	RegisterService2 rService; 
//	
//	
//	@GetMapping("check.do")
//	public String check(Model model) {
////		System.out.println("check.do");
//		return "register/registerType";
//	}
//	
//	@GetMapping("registerPage.do")
//	public String registerPage(Model model) {
////		System.out.println("register.do");
//		List<MemVO> mlist = rService.selectAll();
//	
//		System.out.println(mlist);
//		System.out.println("Asdkasjdlajskldjaskldjklasjdklasjkldjaskldjklasjdlkajskld");
//		model.addAttribute("mlist",mlist);
//		return "register/registerForm";
//		
//	}
//	
//}
