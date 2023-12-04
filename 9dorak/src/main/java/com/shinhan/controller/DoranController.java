package com.shinhan.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.shinhan.dto.CommentVO;
import com.shinhan.dto.DCommentVO;
import com.shinhan.dto.DlikeVO;
import com.shinhan.dto.DoranVO;

import com.shinhan.model.DoranService;

@Controller
@RequestMapping("/doran")
public class DoranController {
//asdad
	@Autowired
	DoranService dService;

	private static final Logger logger = LoggerFactory.getLogger(DoranController.class);

	@GetMapping("doran.do")
	public String doran(@RequestParam(name = "orderBy", defaultValue = "views") String orderBy, Model model) {
		List<DoranVO> dlist;
		System.out.println(orderBy);

		if ("views".equals(orderBy)) {
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

		return "doran/doran";
	}

////

	@GetMapping("/doran2.do")
	public String doran2(@RequestParam(name = "orderBy", defaultValue = "views") String orderBy, Model model) {
		List<DoranVO> dlist;
		System.out.println(orderBy);

		if ("views".equals(orderBy)) {
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

	@GetMapping("doranUpload.do")
	public String doranUpload(Model model) {
		System.out.println("업로드 페이지로 이동");
		return "doran/doranUpload";
	}

	/*
	 * @PostMapping(value = "/doran/doranUpload.do", produces =
	 * "text/plain;charset=utf-8")
	 * 
	 * @ResponseBody public String handleDoranUpload(@RequestParam(value =
	 * "doranTitle", required = false) String doranTitle,
	 * 
	 * @RequestParam("doranCont") String doranCont, @RequestParam("doranView") int
	 * doranView,
	 * 
	 * @RequestParam("memId") String memId, @RequestParam("doranDate") String
	 * doranDateString,
	 * 
	 * @RequestParam("doranImage") MultipartFile doranImageFile) {
	 * 
	 * 
	 * System.out.println("도란 업로드 >> "); SimpleDateFormat dateFormat = new
	 * SimpleDateFormat("yyyy-MM-dd"); Date doranDate = null; try { doranDate =
	 * (Date) dateFormat.parse(doranDateString); } catch (ParseException e) {
	 * e.printStackTrace(); }
	 * 
	 * int dsize = dService.selectAll().size();
	 * 
	 * DoranVO doran = new DoranVO(); doran.setDoran_no(dsize + 1);
	 * doran.setDoran_title(doranTitle); doran.setDoran_cont(doranCont);
	 * doran.setDoran_view(doranView); doran.setMem_id(memId);
	 * doran.setDoran_date(doranDate);
	 * 
	 * // 처리된 이미지를 저장할 경로 설정 String uploadPath = "resources/images/doran/"; // 실제로
	 * 사용할 업로드 경로로 변경
	 * 
	 * // 실제 파일 이름 가져오기 String originalFilename =
	 * doranImageFile.getOriginalFilename();
	 * 
	 * // 업로드할 파일이름 중복 방지를 위해 UUID 사용 String uuid = UUID.randomUUID().toString();
	 * String uploadFileName = uuid + "_" + originalFilename;
	 * 
	 * // 업로드할 경로 설정 String uploadFilePath = uploadPath + File.separator +
	 * uploadFileName;
	 * 
	 * // 이미지 업로드 try { doranImageFile.transferTo(new File(uploadFilePath)); } catch
	 * (IOException e) { e.printStackTrace(); }
	 * 
	 * // 이미지 파일 이름을 VO에 저장 doran.setDoran_image(uploadFileName);
	 * 
	 * System.out.println("작성한 글:" + doran.toString()); dService.insertDoran(doran);
	 * 
	 * return "Upload successful!"; }
	 */

	@PostMapping(value = "/doranUpload.do", produces = "text/plain;charset=utf-8")
	public ResponseEntity<String> handleDoranUpload(
			@RequestPart(value = "doranTitle", required = false) String doranTitle,
			@RequestPart("doranCont") String doranCont, @RequestPart("doranView") int doranView,
			@RequestPart("memId") String memId, @RequestPart("doranDate") String doranDateString,
			@RequestPart("doranImage") MultipartFile doranImageFile) {

		System.out.println("도란 업로드 >> ");
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date doranDate = null;
		try {
			doranDate = (Date) dateFormat.parse(doranDateString);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		int dsize = dService.selectAll().size();

		DoranVO doran = new DoranVO();
		doran.setDoran_no(dsize + 1);
		doran.setDoran_title(doranTitle);
		doran.setDoran_cont(doranCont);
		doran.setDoran_view(doranView);
		doran.setMem_id(memId);
		doran.setDoran_date(doranDate);

		// 처리된 이미지를 저장할 경로 설정
		String uploadPath = "resources/images/doran/"; // 실제로 사용할 업로드 경로로 변경

		// 실제 파일 이름 가져오기
		String originalFilename = doranImageFile.getOriginalFilename();

		// 업로드할 파일이름 중복 방지를 위해 UUID 사용
		String uuid = UUID.randomUUID().toString();
		String uploadFileName = uuid + "_" + originalFilename;

		// 업로드할 경로 설정
		String uploadFilePath = uploadPath + File.separator + uploadFileName;

		// 이미지 업로드
		try {
			doranImageFile.transferTo(new File(uploadFilePath));
		} catch (IOException e) {
			e.printStackTrace();
			return new ResponseEntity<>("Upload failed!", HttpStatus.INTERNAL_SERVER_ERROR);
		}

		// 이미지 파일 이름을 VO에 저장
		doran.setDoran_image(uploadFileName);

		dService.insertDoran(doran);

		return new ResponseEntity<>("Upload successful!", HttpStatus.OK);

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
