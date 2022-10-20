package com.goodee.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.goodee.vo.PageVO;
import com.goodee.vo.ProductVO;
import com.goodee.vo.UserVO;
import com.goodee.vo.WrotebbsVO;
import com.goodee.vo.orderUser;

@Mapper
public interface ProjectDAO {
	
	public int login(UserVO vo);
	public UserVO getUser(UserVO vo);
	public int isAdmin(UserVO vo);
	
	//회원가입
	public void addUser(UserVO vo);
	public int checkid(UserVO vo);
	
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
	
	//관리자페이지 회원조회
	public int usercount();
	public List<UserVO> userList(PageVO vo);
	public List<UserVO> userListdetail(@Param("id") int id);
	public void adminUserUpdate(UserVO vo);
	public void adminUserDelete(UserVO vo);
	
	//유진 DAO
	public void orderUserInfor(orderUser vo);
}
