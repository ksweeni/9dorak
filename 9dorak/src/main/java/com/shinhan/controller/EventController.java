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
import com.shinhan.model.EventService;

@Controller
@RequestMapping("event")
public class EventController {
	@Autowired
	EventService eService;

	private static final Logger logger = LoggerFactory.getLogger(EventController.class);

	@GetMapping("event.do")
	public String event(Model model) {
		List<EventVO> elist = eService.selectAll();
		model.addAttribute("elist", elist);
		return "event/event";
	}
}
