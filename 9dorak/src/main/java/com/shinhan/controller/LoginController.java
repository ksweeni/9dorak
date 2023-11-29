package com.shinhan.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shinhan.dto.MemVO;
import com.shinhan.model.LoginService;

@Controller
@RequestMapping("login")
public class LoginController {
	
	@Autowired
	LoginService lservice;
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
   
	@GetMapping("login.do")
    public String login() {
		MemVO memvo = lservice.login("mem_id", "mem_pw");
        return "login/login";
    }
}
