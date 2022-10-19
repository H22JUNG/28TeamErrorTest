package com.goodee.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.goodee.vo.ProductVO;
import com.goodee.vo.UserVO;
import com.goodee.vo.WrotebbsVO;

@Mapper
public interface ProjectDAO {
	
	public int login(UserVO vo);
	public UserVO getUser(UserVO vo);
	public int isAdmin(UserVO vo);
	
	//카테고리별 상품 리스트로 이동
	public List<ProductVO> selectCategory(String category1);
	public List<ProductVO> selectInnerCategory(String category2);
	
	//내가 쓴 글
	public List<WrotebbsVO> getwrote(UserVO vo);
	public List<WrotebbsVO> getRewrote();
	public List<WrotebbsVO> getsearch(@Param("category")String category);
	public WrotebbsVO getdetail(@Param("id") int id);
	public void getdelete(int id);
	public void modify(WrotebbsVO vo);
}
