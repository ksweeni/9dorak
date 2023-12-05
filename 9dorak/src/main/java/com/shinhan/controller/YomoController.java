package com.shinhan.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shinhan.dto.AnnoVO;
import com.shinhan.model.YomoService;

@Controller
@RequestMapping("yomo")
public class YomoController {
	
	@Autowired
	YomoService yservice;

	private static final Logger logger = LoggerFactory.getLogger(YomoController.class);
	
	@GetMapping("notice.do")
	public String notice() {
		return "yomo/notice";
	}
	
    @GetMapping("getAnnoList")
    @ResponseBody
    public List<AnnoVO> getAnnoList() {
        return yservice.selectAll();
    }
}

