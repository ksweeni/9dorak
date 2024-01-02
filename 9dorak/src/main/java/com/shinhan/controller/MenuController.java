package com.shinhan.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.type.filter.AbstractClassTestingTypeFilter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.shinhan.dto.MemVO;
import com.shinhan.dto.MemreviewVO;
import com.shinhan.dto.PagingVO;
import com.shinhan.dto.ProVO;
import com.shinhan.dto.ProimageVO;
import com.shinhan.model.MenuService;


@Controller
@RequestMapping("menu")
public class MenuController {

	@Autowired
	MenuService mService;

	private static final Logger logger = LoggerFactory.getLogger(MenuController.class);

	//메뉴보기
	@GetMapping("menu.do")
	public String menu(Model model) {
		List<ProVO> plist = mService.selectAll();
		model.addAttribute("mlist", plist);
		//System.out.println(plist);
		return "menu/menu";
	}
	
	//카테고리+검색
	@GetMapping("searchPro.do")
	//@ResponseBody
	public String searchPro(Model model,@RequestParam Map<String, Object> map) throws JsonMappingException, JsonProcessingException {
		
		//ObjectMapper mapper = new ObjectMapper();
		ProVO pro = new ProVO();
		
		//System.out.println("검색어 :"+(String)map.get("pro_name"));
		//System.out.println("카테고리 :"+(String)map.get("ingre_no"));
		pro.setPro_name((String)map.get("pro_name"));
		pro.setIngre_no((String)map.get("ingre_no"));
		
		List<ProVO> slist = mService.selectSearchPro(pro);
		model.addAttribute("slist", slist);
		//System.out.println("최종 조회리스트 :"+slist.toString());
		
		return "menu/menu_ajax";
	}
	
	//정렬
	@GetMapping("searchOrderby.do")
	public String searchOrderby(Model model, ProVO pro) {
		//System.out.println(pro.getOrder_type());
		//System.out.println(pro.getPro_aller());
		//System.out.println(pro.getIngre_no());
		//@RequestParam("order_type") String order_type
		
		//카테고리 + 정렬
		if(pro.getIngre_no() != "" && pro.getOrder_type() != "") {
			List<ProVO> slist = mService.selectCtgrOrder(pro);
			model.addAttribute("slist", slist);
			//System.out.println(slist);
			//System.out.println(pro.getIngre_no());
			//System.out.println(pro.getOrder_type());
			return "menu/menu_ajax";
		}
		
		//알러지 + 정렬
		if(pro.getPro_aller() != null && pro.getOrder_type() != null) {
			List<ProVO> slist = mService.selectAllOrder(pro);
			model.addAttribute("slist", slist);
			//System.out.println(slist);
			return "menu/menu_ajax";
		}
		
		if(pro.getOrder_type().equals("신상품 순")) {
			List<ProVO> slist = mService.selectOrderbyNew();
			model.addAttribute("slist", slist);
			//System.out.println(slist);
		}else if(pro.getOrder_type().equals("인기순")) {
			List<ProVO> slist = mService.selectOrderbyLike();
			model.addAttribute("slist", slist);
		}
		
		return "menu/menu_ajax";
	}
	
	//알러지+검색
	@GetMapping("searchAllergyCheck.do")
	public String searchAllergyCheck(Model model, @RequestParam Map<String, Object> map) throws JsonMappingException, JsonProcessingException {
	   //System.out.println(pro_aller);
	   //@RequestParam("pro_aller") String pro_aller
	   ProVO pro = new ProVO();
	   
	   pro.setPro_name((String)map.get("pro_name"));
	   pro.setPro_aller((String)map.get("pro_aller"));
	   //System.out.println(pro.getPro_aller());
	   //System.out.println(pro.getPro_name());
	      
	   List<ProVO> slist = mService.searchAllergyCheck(pro);
	   model.addAttribute("slist", slist);
	      
	   return "menu/menu_ajax";
	 }
	
//	//알러지
//	@GetMapping("searchAllergyCheck.do")
//	public String searchAllergyCheck(Model model, ProVO pro) {
//		//System.out.println(pro_aller);
//		//@RequestParam("pro_aller") String pro_aller
//		List<ProVO> slist = mService.searchAllergyCheck(pro.getPro_aller());
//		model.addAttribute("slist", slist);
//		
//		return "menu/menu_ajax";
//	}
	
	//리뷰페이지
    @GetMapping("menuSpecificReview.do")
    public String menuSpecificReview(Model model, ProVO pro, HttpSession session,@RequestParam(defaultValue = "0") int currentPage) {
        MemVO memVO = (MemVO) session.getAttribute("loginmem");
        Map<String, Object> inputMap = new HashMap<String, Object>();
        inputMap.put("pro_no", pro.getPro_no());
        inputMap.put("currentPage", currentPage);
        List<ProimageVO> images = mService.selectByNoImage(pro.getPro_no());
//        System.out.println(images);
        model.addAttribute("images",images);
        if(memVO != null) {
            
            String memId = memVO.getMem_id();
            inputMap.put("mem_id", memId);
            
            model.addAttribute("reserveCnt", mService.selectReserveYn(inputMap));
        }
        
        List<Map<String, Object>> txtrlist = mService.selectProReviewTxt(inputMap);
        List<Map<String, Object>> phtrlist = mService.selectProReviewPth(inputMap);
        
        Map<String, Object> revwCnt = mService.reviewCnt(pro.getPro_no());
        
        int pageNum = (int) Math.ceil((int)revwCnt.get("txtCnt") * 1.0 / 4);
        
        ArrayList<Integer> pageList = new ArrayList<Integer>(); 
       
        //System.out.println((int)revwCnt.get("txtCnt"));
        //System.out.println(pageNum);
        
        //페이지 숫자표시
        for (int i= 0; i < pageNum; i++) {
            pageList.add(i,i+1);
        };
		
        model.addAttribute("pageList", pageList);
             
        model.addAttribute("txtrlist", txtrlist);
        model.addAttribute("phtrlist", phtrlist);
        
        model.addAttribute("totCnt",revwCnt.get("totCnt"));
        model.addAttribute("phtCnt",revwCnt.get("phtCnt"));
        model.addAttribute("txtCnt",revwCnt.get("txtCnt"));
        model.addAttribute("menudetail", mService.selectByNo(pro.getPro_no()));
                
        return "menu/menuSpecificReview";
    }
    
    @GetMapping("reviewPageBtnClick.do")
    public String reviewPageBtnClick(Model model, ProVO pro, HttpSession session,@RequestParam(defaultValue = "0") int currentPage) {
        MemVO memVO = (MemVO) session.getAttribute("loginmem");
        Map<String, Object> inputMap = new HashMap<String, Object>();
        inputMap.put("pro_no", pro.getPro_no());
        inputMap.put("currentPage", currentPage);
        if(memVO != null) {
            
            String memId = memVO.getMem_id();
            inputMap.put("mem_id", memId);
            
            model.addAttribute("reserveCnt", mService.selectReserveYn(inputMap));
        }
        
        List<Map<String, Object>> txtrlist = mService.selectProReviewTxt(inputMap);
        
        model.addAttribute("txtrlist", txtrlist);
        model.addAttribute("menudetail", mService.selectByNo(pro.getPro_no()));
                
        return "menu/review_ajax";
    }
	
    //찜목록
	@GetMapping("reserve.do")
	public String reserveCheck(Model model, ProVO pro, HttpSession session, @RequestParam Map<String, Object> map) {
		MemVO memVO = (MemVO) session.getAttribute("loginmem");
		int rslt = 0;
		int rslt2 = 0;
		if(memVO != null) {
			Map<String, Object> ReserveInputMap = new HashMap<String, Object>();
			String memId = memVO.getMem_id();
			String flag = (String)map.get("flag");
			String pro_no = (String)map.get("pro_no");
			ReserveInputMap.put("mem_id", memId);
			ReserveInputMap.put("pro_no", pro_no);
			
			//System.out.println(ReserveInputMap.get("mem_id"));
			//System.out.println(ReserveInputMap.get("pro_no"));
			
			if(flag.equals("1")) {
				 rslt =  mService.insertReserve(ReserveInputMap);
				 rslt2 = mService.updateReserve(pro_no);
				 //System.out.println(pro_no);
			}else if(flag.equals("2")){
				 rslt =  mService.deleteReserve(ReserveInputMap);
				 rslt2 = mService.updateReserve(pro_no);
			}
		}else {
		;	
		}
		
		return "menu/menuSpecificReview";
	}
	
	// 리뷰 사진 및 동영상 모아보기
	@GetMapping("menuMediaReview.do")
	public String menuMediaReview(Model model, ProVO pro) {
		
		List<Map<String, Object>> moalist = mService.selectMoaview(pro.getPro_no());
		model.addAttribute("moalist", moalist);
		
		//System.out.println(moalist);
		//System.out.println(mService.selectMoaFrist(pro.getPro_no()));
		
        model.addAttribute("moadetail", mService.selectByNo(pro.getPro_no()));
		model.addAttribute("moafrist", mService.selectMoaFrist(pro.getPro_no()));
		
		return "menu/menuMediaReviews";
	}
	
	@PostMapping("mediaReviewDetail.do")
	public String mediaReviewDetail(Model model, ProVO pro, MemreviewVO rev) {
		//System.out.println("mediaReviewDetail");
		//System.out.println(rev.getMemreview_no());
		//System.out.println(pro.getPro_no());
		//System.out.println(map.get("memreview_no"));
		//System.out.println(map.get("pro_no"));
		
		List<Map<String, Object>> moalist = mService.selectMoaview(pro.getPro_no());
		model.addAttribute("moalist", moalist);
		//System.out.println(moalist);
		
		model.addAttribute("moadetail", mService.selectByNo(pro.getPro_no()));
		model.addAttribute("moaSelected", mService.selectMoaSelected(rev.getMemreview_no()));
		
		return "menu/mediareview_ajax";
	}
	
}
