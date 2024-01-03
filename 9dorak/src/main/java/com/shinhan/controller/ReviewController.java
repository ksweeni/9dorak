package com.shinhan.controller;


import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.shinhan.dto.MemVO;
import com.shinhan.dto.MemreviewVO;
import com.shinhan.dto.OrderVO;
import com.shinhan.dto.OrderdetailVO;
import com.shinhan.dto.ProVO;
import com.shinhan.dto.ProimageVO;
import com.shinhan.model.MenuService;
import com.shinhan.model.MyPageService;
import com.shinhan.model.ReviewService;


@Controller
@RequestMapping("review")
public class ReviewController {

	@Autowired
	ReviewService rService;
	
	@Autowired
	MenuService mService;

	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);

	//리뷰
	@PostMapping("review.do")
	public String review(Model model, HttpSession session, @RequestParam Map<String, Object> map, ProVO pro) {
		
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		Map<String, Object> inputMap = new HashMap<String, Object>();
        inputMap.put("mem_id", loginmem.getMem_id());
        inputMap.put("order_no", (String)map.get("order_no"));
        inputMap.put("pro_no", (String)map.get("pro_no"));
        //System.out.println(inputMap);
        
        List<ProimageVO> images = mService.selectByNoImage(pro.getPro_no());
        model.addAttribute("images",images);
      
		model.addAttribute("orderdetail", rService.selectByOrderdetail(inputMap));

		model.addAttribute("checkedreview", rService.selectCheckedReview(inputMap));
		//System.out.println(model.getAttribute("checkedreview"));
		
		return "review/reviewUpload";
	}
	
	//리뷰작성
	@PostMapping("reviewUpload.do")
	public String reviewUpload (Model model, HttpSession session, MemreviewVO review, MultipartFile singleFile,
			HttpServletRequest request){
		
		String path = request.getSession().getServletContext().getRealPath("resources");
		System.out.println("path : " + path);
		//String root = path + "\\uploadFiles" ;
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
		
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		String memId = loginmem.getMem_id();
		
		//review.setMemreview_no(review.getMemreview_no());
		review.setMemreview_cont(review.getMemreview_cont());
		review.setOrder_no(request.getParameter("order_no"));
		review.setPro_no(request.getParameter("pro_no"));
		
		int pro_no = Integer.parseInt(request.getParameter("pro_no"));
		// 이미지를 업로드한 경우에만 파일 이름 설정
		if (singleFile != null && !singleFile.isEmpty()) {
		    review.setMemreview_image(ranFileName);
		} else {
		    review.setMemreview_image(null);
		}
		
		//System.out.println(review.getMemreview_cont());
		//System.out.println(review.getOrder_no());
		//System.out.println(review.getPro_no());
		
		int result = rService.insertReview(review);

		return "redirect:/menu/menuSpecificReview.do?pro_no=" + pro_no;
	}
	
	
}
