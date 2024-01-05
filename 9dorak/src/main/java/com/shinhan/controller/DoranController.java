package com.shinhan.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.shinhan.dto.CommentVO;
import com.shinhan.dto.DoranVO;
import com.shinhan.dto.DoranlikeVO;
import com.shinhan.dto.EarnpointVO;
import com.shinhan.dto.MemVO;
import com.shinhan.model.DoranService;
import com.shinhan.model.MyPageService;
import com.shinhan.model.RegisterService;

@Controller
@RequestMapping("doran")
public class DoranController {

	@Autowired
	DoranService dService;
	@Autowired
	RegisterService rService;
	@Autowired
	MyPageService mService;

	private static final Logger logger = LoggerFactory.getLogger(DoranController.class);

	@GetMapping("doran.do")
	public String doran(@RequestParam(name = "orderBy", defaultValue = "latest") String orderBy, Model model,
			HttpSession session) {
		List<DoranVO> dlist;
		dlist = dService.selectAll();
		model.addAttribute("dlist", dlist);

		MemVO memId = (MemVO) session.getAttribute("loginmem");

		if (memId == null) {
			model.addAttribute("memPoint", "로그인하고 포인트를 얻으세요");
		} else { 
			
			List<DoranlikeVO> dllist = dService.selectlike(memId.getMem_id());
			model.addAttribute("dllist", dllist);
		}
		model.addAttribute("loginmem", memId);
		
		System.out.println(dlist);
		return "doran/doran";
	}

	@GetMapping("/doranFilter.do")
	public String doran2(@RequestParam(name = "orderBy", defaultValue = "latest") String orderBy, Model model,HttpSession session) {
		List<DoranVO> dlist;
		if ("views".equals(orderBy)) {
			dlist = dService.selectAllByView();
		} else if ("latest".equals(orderBy)) {
			dlist = dService.selectAll();
		} else {
			dlist = dService.selectAllByDlike();
		}
		
		MemVO memId = (MemVO) session.getAttribute("loginmem");
		
		
		model.addAttribute("dlist", dlist);
		List<DoranlikeVO> dllist = dService.selectlike(memId.getMem_id());
	
		model.addAttribute("dllist", dllist);
		model.addAttribute("loginmem", memId);
		return "doran/doran_ajax";
	}


	@GetMapping("/doranFor.do")
	public String doranFor(@RequestParam(name = "dataFor", defaultValue = "doran") String dataFor, Model model,
			HttpSession session, RedirectAttributes redirectAttributes) {
		List<DoranVO> dlist;
		System.out.println("DateFor:" + dataFor);
		MemVO memId = (MemVO) session.getAttribute("loginmem");
		if (dataFor.equals("myDoran")) {
			dlist = dService.selectAllForMe(memId.getMem_id());
		} else {
			dlist = dService.selectAll();
		}
		if (dlist.size() == 0) {
			System.out.println("해당하는 데이터가 없습니다. 글을 써 주세요 !");
		}
		if( memId != null) {
			
			List<DoranlikeVO> dllist = dService.selectlike(memId.getMem_id());
			model.addAttribute("dllist", dllist);
		}
//		System.out.println("도라라라라라라라" + dllist);
		model.addAttribute("dlist", dlist);
		return "doran/doran_ajax";
	}

	@GetMapping("doranUpload.do")
	public String doranUpload(Model model) {
		return "doran/doranUpload";
	}


	@GetMapping("/doranFilterForMe.do")
	public String doranFilterForMe(@RequestParam(name = "orderBy", defaultValue = "latest") String orderBy, Model model,
			HttpSession session) {
		List<DoranVO> dlist;
		MemVO memVO = (MemVO) session.getAttribute("loginmem");
		String memId = memVO.getMem_id();

		if ("views".equals(orderBy)) {
			dlist = dService.selectAllByViewForMe(memId);
		} else if ("latest".equals(orderBy)) {
			dlist = dService.selectAllForMe(memId);
		} else {
			dlist = dService.selectAllByDlikeForMe(memId);
		}
		List<DoranlikeVO> dllist = dService.selectlike(memVO.getMem_id());
		
		model.addAttribute("dllist", dllist);
		model.addAttribute("dlist", dlist);
		return "doran/doran_ajax";
	}

	@PostMapping("quickUpload.do")
	public String quickUpload(@RequestBody Map<String, String> requestData, Model model, HttpSession session) {
		String title = requestData.get("title");
		String content = requestData.get("content");

		int dsize = dService.selectAll().size();
		MemVO memVO = (MemVO) session.getAttribute("loginmem");
		DoranVO doran = new DoranVO();
		String memId = memVO.getMem_id();
		doran.setDoran_no(dsize + 1);
		doran.setDoran_title(title);
		doran.setDoran_cont(content);
		doran.setDoran_view(0);
		doran.setMem_id(memId);
		doran.setDoran_image(null);
		doran.setDoran_profile(memVO.getMem_image());
		dService.insertDoran(doran);
		
		EarnpointVO earn  = new EarnpointVO();
		earn.setMem_id(memVO.getMem_id());
		earn.setPoint_name("도란도란 글쓰기 이벤트");
		earn.setPoint(10);
		memVO.setMem_point(10);
		int EarnPoint = rService.insertEarn(earn);
		int updateResult = rService.pointUpdate(memVO);
		memVO  = mService.getMember(memVO.getMem_id());
		session.setAttribute("loginmem", memVO);
		return "redirect:/doran/doran.do";
	}

	@PostMapping("uploadComment.do")
	@ResponseBody
	public Map<String, Object> uploadComment(@RequestParam String newComment, @RequestParam int doranNo,
			HttpSession session) {
		Map<String, Object> response = new HashMap<>();
		try {

			List<CommentVO> clist = dService.selectComment();
			MemVO memVO = (MemVO) session.getAttribute("loginmem");
			String memId = memVO.getMem_id();
			CommentVO comment = new CommentVO();
			comment.setComment_cont(newComment);
			comment.setDoran_no(doranNo);
			comment.setComment_no(clist.size() + 1);
			comment.setMem_id(memId);
			dService.insertComment(comment);
		
			List<CommentVO> updatedComments = dService.selectAllCommentAbout(doranNo);
			
		
			response.put("comments", updatedComments);
			response.put("success", true);
			
		} catch (Exception e) {
		
			response.put("success", false);
			response.put("error", e.getMessage());
		}
		return response;
	}

	@PostMapping("doranUpload.do")
	public String handleDoranUpload(DoranVO doran, @RequestParam MultipartFile singleFile, HttpServletRequest request,
			HttpSession session) {

		int dsize = dService.selectAll().size();
		String path = request.getSession().getServletContext().getRealPath("resources");
		System.out.println("path : " + path);

		String root = path + "\\upload";

		File file = new File(root);

		// 만약 uploadFiles 폴더가 없으면 생성해라 라는뜻
		if (!file.exists())
			file.mkdirs();

		// 업로드할 폴더 설정
		String originFileName = singleFile.getOriginalFilename();
		String ext = "";
		int lastIndex = originFileName.lastIndexOf("."); // 확장자
		if (lastIndex != -1) { // 확장자가 없다면
			ext = originFileName.substring(lastIndex);
		}

		// ext를 이용한 나머지 로직 수행
		String ranFileName = UUID.randomUUID().toString() + ext; // 랜덤값으로 파일의 이름을 준다
		File changeFile = new File(root + "\\" + ranFileName);

		// 파일업로드
		try {
			singleFile.transferTo(changeFile);
			System.out.println("파일 업로드 성공");
		} catch (IllegalStateException | IOException e) {
			System.out.println("파일 업로드 실패");
			e.printStackTrace();
		}

		MemVO memVO = (MemVO) session.getAttribute("loginmem");
		String memId = memVO.getMem_id();
		doran.setDoran_no(dsize + 1);
		doran.setDoran_title(doran.getDoran_title());
		doran.setDoran_cont(doran.getDoran_cont());
		doran.setDoran_view(0);
		doran.setMem_id(memId);
		
		 if (!singleFile.isEmpty()) {
			 doran.setDoran_image(ranFileName);
		    } else {
		        doran.setDoran_image(null);
		    }
		doran.setDoran_profile(memVO.getMem_image());
		dService.insertDoran(doran);

		EarnpointVO earn  = new EarnpointVO();
		earn.setMem_id(memVO.getMem_id());
		earn.setPoint_name("도란도란 글쓰기 이벤트");
		earn.setPoint(50);
		memVO.setMem_point(50);
		int EarnPoint = rService.insertEarn(earn);
		int updateResult = rService.pointUpdate(memVO);
		memVO  = mService.getMember(memVO.getMem_id());
		session.setAttribute("loginmem", memVO);
		return "redirect:/doran/doran.do";
	}

	@GetMapping("/doranFeedDetail/{doranNo}")
	public String doranFeedDetail(@PathVariable int doranNo, Model model) {
		DoranVO doran = dService.selectDoran_no(doranNo);
		List<CommentVO> comments = dService.selectAllCommentAbout(doranNo);
		model.addAttribute("doran", doran);
		model.addAttribute("comments", comments);
		return "/doran/doranFeedDetail";
	}

	@RequestMapping(value = "doranLikeUpdate.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String doranLikeUpdate(@RequestParam int doran_no, String mem_id) {
		System.out.println("doranLikeUpdate 좋아요 업데이트");
		System.out.println(doran_no + " " + mem_id);
		DoranlikeVO dlike = new DoranlikeVO();
		dlike.setDoran_no(doran_no);
		dlike.setMem_id(mem_id);
		System.out.println(dlike);
		System.out.println(dService.selectDoranLikeBy(dlike));
		// 이미 좋아요 된 것이면 취소하고 없으면 insert 한다
		if (dService.selectDoranLikeBy(dlike) > 0) {
			System.out.println("좋아요 삭제 ~");
			dService.deleteDoranLike(dlike);
			return "삭제";
		} else {
			System.out.println("좋아요 추가!");
			dService.insertDoranLike(dlike);
			return "추가";
		}
	}

	@GetMapping("doranSearch.do")
	public String selectSearchDoran(@RequestParam String keyword, Model model) {
		List<DoranVO> dlist = dService.selectSearchDoran(keyword);
		model.addAttribute("dlist", dlist);
		return "doran/doran_ajax";
	}

	@PostMapping("updateViewCount.do")
	public ResponseEntity<String> updateView(@RequestParam int doranNo) {
		try {
			dService.updateViewCount(doranNo);
			return ResponseEntity.ok("조회수가 증가했습니다.");
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("조회수 증가 중 에러가 발생했습니다.");
		}
	}
	
	@PostMapping("deleteDoran.do")
	@ResponseBody
	public Map<String, Object> deleteDoran(@RequestParam int doranNo) {
	    Map<String, Object> response = new HashMap<>();
	    try {
	        dService.deleteDoran(doranNo);
	        response.put("success", true);
	    } catch (Exception e) {
	        response.put("success", false);
	        response.put("error", e.getMessage());
	    }
	    return response;
	}


}