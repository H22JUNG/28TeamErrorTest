package com.goodee.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.goodee.vo.OptionVO;
import com.goodee.vo.PageVO;
import com.goodee.vo.ProductListVO;
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
	
	//product List 출력 - 윤정
	public List<Map<String,Object>> selectProductList();
	//product 수정페이지 리스트 불러오기
	public List<Map<String,Object>> selectUpdateList(String pro_num);
	//product 수정하기
	public void update1(ProductListVO vo);
	public void update2(ProductListVO vo);
	public void update3(ProductListVO vo);
	//product 지우기
	public void productDelete(String pro_num);
	
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
