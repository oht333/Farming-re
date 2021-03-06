package com.gr.farming.category.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.farming.category.model.CategoryService;
import com.gr.farming.category.model.CategoryVO;
import com.gr.farming.category.model.SearchVO4;
import com.gr.farming.common.ConstUtil;
import com.gr.farming.common.PaginationInfo;
import com.gr.farming.common.SearchVO;
import com.gr.farming.common.SearchVO2;

@Controller
@RequestMapping("/admin/category")
public class CategoryController {
	private final CategoryService service;
	
	@Autowired
	public CategoryController(CategoryService service) {
		this.service = service;
	}
	private static final Logger logger
	=LoggerFactory.getLogger(CategoryController.class);
	
	@RequestMapping(value="/write", method = RequestMethod.GET)
	public String write_get() {
		logger.info("카테고리 등록");
		return "admin/category/write";
	}
	
	@RequestMapping(value="/write", method = RequestMethod.POST)
	public String write_post(@ModelAttribute CategoryVO vo) {
		logger.info("카테고리 등록 처리 파라미터 vo={}",vo);
		int cnt = service.insert(vo);
		logger.info("카테고리 등록 처리결과 cnt={}",cnt);
		return "redirect:/admin/category/list";
	}
	
	@RequestMapping("/list")
	public String list(@ModelAttribute SearchVO4 searchVo, Model model) {
		logger.info("목록 페이지");
		
		// 페이지네이션인포 객체 생성 : 계산목적 
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		// searchvo에 값 넣기 
		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("값 셋팅 후 searchVo={}", searchVo);
		
		int totalRecord=service.selectTotalRecord(searchVo);
		pagingInfo.setTotalRecord(totalRecord);
		
		List<CategoryVO> list = service.select(searchVo);
		logger.info("목록 페이지 list.size={}",list.size());
		
		model.addAttribute("list", list); 
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "admin/category/list";
	}
	
	@RequestMapping("/detail")
	public String detail(@RequestParam(defaultValue = "0") int categoryNo, Model model) {
		logger.info("글 상세보기 파라미터 no={}", categoryNo);
		
		CategoryVO vo = service.selectByNo(categoryNo);
		logger.info("상세보기 결과 vo={}", vo);
		
		model.addAttribute("vo", vo);
		
		return "admin/category/detail";
		
	}
	
	@RequestMapping(value="/cateUpdate", method = RequestMethod.GET)
	public String update_get(@RequestParam(defaultValue = "0") int categoryNo,
			Model model) {
		logger.info("수정 페이지 번호 no = {}",categoryNo);
		
		CategoryVO vo = service.selectByNo(categoryNo);
		logger.info("수정 페이지 상세조회 vo={}",vo);
		model.addAttribute("vo", vo);
		
		return "admin/category/cateUpdate";
	}
	
	@RequestMapping(value="/cateUpdate", method = RequestMethod.POST)
	public String update_post(@ModelAttribute CategoryVO vo) {
		logger.info("수정처리 파라미터 vo={}",vo);
		
		int cnt = service.update(vo);
		logger.info("수정처리 결과 cnt={}",cnt);
		
		return "redirect:/admin/category/detail?categoryNo="+vo.getCategoryNo();
	}
	
	@RequestMapping(value="/delete", method = RequestMethod.GET)
	public String delete_get(@RequestParam(defaultValue = "0") int categoryNo,
			Model model) {
		logger.info("글 삭제 화면, 파라미터 no={}", categoryNo);
		
		return "admin/category/delete";
		
	}
	
	@RequestMapping(value="/delete", method = RequestMethod.POST)
	public String delete_post(@ModelAttribute CategoryVO vo, Model model) {
		logger.info("글삭제 처리, 파라미터 vo={}", vo);
		String msg="", url="";
		
		int cnt=service.delete(vo.getCategoryNo());
		if(cnt>0) {
			msg="글삭제되었습니다.";
			url="/admin/category/list";
		}
		 
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
				
		return "common/message";
	}
	
}
