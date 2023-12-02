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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shinhan.dto.CommentVO;
import com.shinhan.dto.DCommentVO;
import com.shinhan.dto.DlikeVO;
import com.shinhan.dto.DoranVO;

import com.shinhan.model.DoranService;

@Controller
@RequestMapping("doran")
public class DoranController {

	@Autowired
	DoranService dService;

	private static final Logger logger = LoggerFactory.getLogger(DoranController.class);

	@GetMapping("doran.do")
	public String doran(@RequestParam(name = "orderBy", defaultValue = "latest") String orderBy, Model model) {
		List<DoranVO> dlist;
		System.out.println(orderBy);

		if ("latest".equals(orderBy)) {
			dlist = dService.selectAll();
		} else if ("views".equals(orderBy)) {
			dlist = dService.selectAllByView();
		} else {
			dlist = dService.selectAll(); 
		}

		List<DlikeVO> dlike = dService.selectLike();
		List<DCommentVO> dcomment = dService.selectComment();
		model.addAttribute("dlist", dlist);
		model.addAttribute("dlike", dlike);
		model.addAttribute("dcomment", dcomment);
		System.out.println("좋아요: " + dlike);
		System.out.println("댓글 수: " + dcomment);
		System.out.println("orderBy : " + orderBy);
	
		return "doran/doran";
	}
	
	@GetMapping("doranUpload.do")
	public String doranUpload(Model model) {
		System.out.println("업로드 페이지로 이동");
	    return "doran/doranUpload";
	}


	@GetMapping("doranFeedDetail.do")
	public String doranFeedDetail(Model model) {
		// 현재 1번 게시글에 대한 댓글 정보 가져오기 test
		List<CommentVO> comments = dService.selectAllCommentAbout(1);
		model.addAttribute("comments", comments);
		logger.info(comments.toString());
		return "doran/doranFeedDetail";
	}
}
