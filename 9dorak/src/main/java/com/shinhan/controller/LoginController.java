package com.shinhan.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.shinhan.dto.MemVO;
import com.shinhan.model.LoginService;

@Controller
@RequestMapping("login")
public class LoginController {

	@Autowired
	LoginService lservice;

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@GetMapping("loginForm.do")
	public String loginForm() {
		return "login/login";
	}

	@PostMapping("login.do")
	public String login(@RequestParam String mem_id, @RequestParam String mem_pw, HttpSession session, Model model) {
		
		MemVO loginmem = lservice.login(mem_id, mem_pw);

		if (loginmem != null) {
			session.setAttribute("loginmem", loginmem);
			return "redirect:/"; // 로그인 성공 시 메인 페이지로 리다이렉트
		} else {
			// 로그인 실패 시 처리
			model.addAttribute("loginErrorMessage", "아이디 또는 비밀번호가 잘못되었습니다.");
			return "login/login"; // 다시 로그인 페이지로
		}
	}
}
