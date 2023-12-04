package com.shinhan.controller;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

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
		dlist = dService.selectAll();

		// List<DlikeVO> dlike = dService.selectLike();
		List<DCommentVO> dcomment = dService.selectComment();
		model.addAttribute("dlist", dlist);
		// model.addAttribute("dlike", dlike);
		model.addAttribute("dcomment", dcomment);
		// System.out.println("좋아요: " + dlike);
		System.out.println("댓글 수: " + dcomment);
		System.out.println("orderBy : " + orderBy);

		return "doran/doran";
	}

	@GetMapping("/doran2.do")
	public String doran2(@RequestParam(name = "orderBy", defaultValue = "latest") String orderBy, Model model) {
		List<DoranVO> dlist;
		System.out.println(orderBy);
		if ("views".equals(orderBy)) {
			dlist = dService.selectAllByView();
		} else if ("latest".equals(orderBy)) {
			dlist = dService.selectAll();
		} else {
			dlist = dService.selectAllByDlike();
		}
		//List<DlikeVO> dlike = dService.selectLike();
		List<DCommentVO> dcomment = dService.selectComment();
		model.addAttribute("dlist", dlist);
		//model.addAttribute("dlike", dlike);
		model.addAttribute("dcomment", dcomment);
		//System.out.println("좋아요: " + dlike);
		System.out.println("댓글 수: " + dcomment);
		System.out.println("orderBy : " + orderBy);
		return "doran/doran_ajax";
	}

	@GetMapping("doranUpload.do")
	public String doranUpload(Model model) {
		System.out.println("업로드 페이지로 이동");
		return "doran/doranUpload";
	}

	@PostMapping(value = "doranUpload.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String handleDoranUpload(DoranVO doran) {
//		public String handleDoranUpload(@RequestParam("doranTitle") String doranTitle,
//				@RequestParam("doranCont") String doranCont, @RequestParam("doranView") int doranView,
//				@RequestParam("memId") String memId, @RequestParam("doranDate") String doranDateString,																// to String
//				@RequestParam("doranImage") String doranImage) {

		System.out.println("체크체크체크체크체크체크체크체크체크체크체크");
		System.out.println(doran);
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//		Date doranDate = null;
//		try {
//			doranDate = (Date) dateFormat.parse(doranDateString);
//		} catch (ParseException e) {
//			e.printStackTrace();
//		}

		int dsize = dService.selectAll().size();

//		DoranVO doran = new DoranVO();
		doran.setDoran_no(dsize + 1);
		doran.setDoran_title(doran.getDoran_title());
		doran.setDoran_cont(doran.getDoran_cont());
		doran.setDoran_view(0);
		doran.setMem_id("aaa");
//		doran.setDoran_date("2023-05-05");
//		doran.setDoran_image(doranImage);
		System.out.println("작성한 글:" + doran.toString());
		dService.insertDoran(doran);
		System.out.println("여기다여기다여기다여기다여기다여기다여기다여기다여기다여기다");
		return "Upload successful!";
	}

	@GetMapping("/doran2.do")
	public String doran2(@RequestParam(name = "orderBy", defaultValue = "views") String orderBy, Model model) {
		List<DoranVO> dlist;
		System.out.println(orderBy);
		if ("views".equals(orderBy)) {
			dlist = dService.selectAllByView();
			dlist = dService.selectAllByView();
		} else if ("latest".equals(orderBy)) {
			dlist = dService.selectAll();
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
		return "doran/doran_ajax";
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
