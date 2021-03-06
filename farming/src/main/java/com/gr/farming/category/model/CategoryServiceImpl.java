package com.gr.farming.category.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.gr.farming.common.SearchVO;

@Service
public class CategoryServiceImpl implements CategoryService{
	private CategoryDAO dao;
	
	@Autowired
	public CategoryServiceImpl(CategoryDAO dao) {
		this.dao = dao;
	}

	public int insert(CategoryVO vo) {
		return dao.insert(vo);
	}
	public List<CategoryVO> select(SearchVO4 searchVo){
		return dao.select(searchVo);
	}
	public CategoryVO selectByNo(int categoryNo) {
		return dao.selectByNo(categoryNo);
	} 
	public int update(CategoryVO vo) {
		return dao.update(vo);
	}

	public int delete(int categoryNo) {
		return dao.delete(categoryNo);
	}
	public List<CategoryVO> selectByMain(String main){
		return dao.selectByMain(main);
	}
	
	public int selectByDetail(String detail) {
		return dao.selectByDetail(detail);
	}

	public int selectTotalRecord(SearchVO4 searchVo) {
		return dao.selectTotalRecord(searchVo);
	}
	
}
