package com.gr.farming.findExp.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.gr.farming.common.ConstUtil;
import com.gr.farming.common.FileUploadUtil;
import com.gr.farming.expert.model.ExpertVO;
import com.gr.farming.field.model.FieldDetailVO;
import com.gr.farming.findExp.model.ExpertInfoVO;
import com.gr.farming.findExp.model.FindExpService;


@Controller
@RequestMapping("/findexp")
public class FindExpController {
	
	private static final Logger logger
	=LoggerFactory.getLogger(FindExpController.class);
	
	private final FindExpService findExpService;
	private final FileUploadUtil fileUploadUtil;

	@Autowired
	public FindExpController(FindExpService findExpService, FileUploadUtil fileUploadUtil) {
		this.findExpService = findExpService;
		this.fileUploadUtil = fileUploadUtil;
	}

	@RequestMapping(value="/findexpWrite", method = RequestMethod.GET)
	public String findexpWrite() {
		logger.info("전문가찾기 글 등록");
		return "findexp/findexpWrite";
	}
	
	
	@GetMapping
	public String expList(@RequestParam(defaultValue="0") int categoryNo,
			Model model) {
		
		logger.info("전문가 리스트, 파라미터 categoryNo={}", categoryNo);
		
		List<Map<String, Object>> list=findExpService.selectExpList(categoryNo);
		
		model.addAttribute("list", list);
		
		return "findexp/findexpList";
	}
	
	@RequestMapping("/expDetail")
	public String findexpDetail(@RequestParam(defaultValue="0") int expertNo,
			Model model) {
		
		logger.info("전문가 상세페이지, 파라미터 expertNo={}", expertNo);
		
		ExpertInfoVO expInfoVo=findExpService.selectExpInfo(expertNo);
		ExpertVO expVo=findExpService.selectByExperNo(expertNo);
		List<FieldDetailVO> fieldList=findExpService.selectFieldDetail(expertNo);
		List<Map<String, Object>> expList=findExpService.selectExpList(expInfoVo.getCategoryNo());
		logger.info("전문가 expVo={}", expVo);
		logger.info("전문가 expInfoVo={}", expInfoVo);
		logger.info("전문가 fieldList={}", fieldList);
		
		model.addAttribute("infoVo", expInfoVo);
		model.addAttribute("expVo", expVo);
		model.addAttribute("fieldList", fieldList);
		model.addAttribute("expList", expList);
		
		return "findexp/expDetail";
	}
	
	
	@RequestMapping("/findexpList")
	public String findexpList() {
		logger.info("전문가찾기 글 목록 조회");
		
		
		return "findexp/findexpList";
	}
	
	
	
	/* 전문가 상세페이지 수정 */
	@RequestMapping("/expDetailEdit")
	public String expDetailEdit(@RequestParam(defaultValue="0") int expertNo,
			Model model) {
		
		logger.info("전문가 상세페이지, 파라미터 expertNo={}", expertNo);
		ExpertInfoVO expInfoVo=findExpService.selectExpInfo(expertNo);
		logger.info("전문가 상세페이지, 파라미터 expInfoVo={}", expInfoVo);
		
		if(expInfoVo==null) {
			model.addAttribute("msg", "추가정보를 먼저 입력하세요.");
			model.addAttribute("url", "/expert/addExp/addExp");
			return "common/message";
		}
		
		ExpertVO expVo=findExpService.selectByExperNo(expertNo);
		
		List<FieldDetailVO> fieldList=findExpService.selectFieldDetail(expertNo);
		logger.info("전문가 expVo={}", expVo);
		logger.info("전문가 expInfoVo={}", expInfoVo);
		logger.info("전문가 fieldList={}", fieldList);
		
		model.addAttribute("infoVo", expInfoVo);
		model.addAttribute("expVo", expVo);
		model.addAttribute("fieldList", fieldList);
		
		return "findexp/expDetailEdit";
	}
	
	@ResponseBody
	@RequestMapping("/editExpInfo")
	public ExpertInfoVO editExpInfo(@ModelAttribute ExpertInfoVO vo,
			MultipartHttpServletRequest request) {
		
		logger.info("전문가 상세페이지 수정, 파라미터 vo={}", vo);
		
		//파일 업로드 처리
		String fileName="", originName="", businessLicense="";
		long fileSize=0;
		int pathFlag=ConstUtil.UPLOAD_IMAGE_FLAG;
		try {
			List<Map<String, Object>> fileList 
				= fileUploadUtil.fileUpload(request, pathFlag);
			for(int i=0;i<fileList.size();i++) {
				 Map<String, Object> map=fileList.get(i);
				 
				 fileName=(String) map.get("fileName");
				 originName=(String) map.get("originalFileName");
				 fileSize=(long) map.get("fileSize");
			}
			
			logger.info("파일 업로드 성공, fileName={}", fileName);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		//2
		vo.setFilename(fileName);
		vo.setOriginalname(originName);
		vo.setFilesize(fileSize);
		

		///업로드 처리
		/*String imageUrl="";
		try {
			List<Map<String, Object>> list 
				=fileUploadUtil.fileUpload(request, ConstUtil.UPLOAD_FILE_FLAG);
			
			for(Map<String, Object> map : list) {
				imageUrl=(String) map.get("fileName");
			}
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		if(vo.getBusinessLicense()!="N") {
			vo.setBusinessLicense(imageUrl);
		}else if(vo.getLicense()!="N") {
			vo.setLicense(imageUrl);
		}else if(vo.getImageVideo()!="N") {
			vo.setImageVideo(imageUrl);
		}*/
		
		int cnt=findExpService.updateExpInfo(vo);
		logger.info("수정 결과, cnt={}", cnt);
		if(cnt>0) {
			logger.info("상세설명 수정 완료");
		}else {
			logger.info("수정 실패");
		}
		
		ExpertInfoVO infoVo=findExpService.selectExpInfo(vo.getExpertNo());
		logger.info("수정된 vo={}",infoVo);
		
		return infoVo;
	}
}
