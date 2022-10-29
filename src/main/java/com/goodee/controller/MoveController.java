package com.goodee.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.goodee.service.BbsService;
import com.goodee.service.CartService;
import com.goodee.service.LoginService;
import com.goodee.service.PayService;
import com.goodee.service.ReviewService;
import com.goodee.service.UserService;
import com.goodee.vo.PageVO;
import com.goodee.vo.QnaVO;
import com.goodee.vo.UserVO;
import com.goodee.vo.WrotebbsVO;

@Controller
public class MoveController {
	public BbsService bbsservice;
	public UserService userservice;
	public LoginService loginservice; //유진쓰가 추가
	public PayService payservice; //이것도 유진쓰가 추가
	public CartService cartservice;
	public ReviewService reviewservice;

	public MoveController(BbsService bbsservice, UserService userservice, LoginService loginservice,
			PayService payservice, CartService cartservice, ReviewService reviewservice) {
		super();
		this.bbsservice = bbsservice;
		this.userservice = userservice;
		this.loginservice = loginservice;
		this.payservice = payservice;
		this.cartservice = cartservice;
		this.reviewservice = reviewservice;
	}
	
	@GetMapping("/loginpage")
	public String loginpage() {
		return "login/login";
	}
	@GetMapping("/signuppage")
	public String signuppage() {
		return "login/sign_up";
	}	
	
	@GetMapping("/cart")
	public String cartPage() {
		return "cart";
	}
	
	@GetMapping("/mypage")
	public String mypage(HttpSession session) {
		if(session.getAttribute("user")!=null) {
		return "my_page";
		} else {
			return "login/login";
		}
	}
	
	
	@GetMapping("/movemypage/{path}")
	public String movemypage(@PathVariable("path") int path, Model model, HttpSession session) {
		if(path == 0) {
			return "my_page";
		} else if(path == 1) {
			//장바구니
			
			return "redirect:/cart/"+((UserVO)session.getAttribute("user")).getUserid();
		} else if(path == 2) {
			
			//아래 두줄 유진쓰 추가 
			session.setAttribute("cartList", payservice.cartList((UserVO)session.getAttribute("user")));
			session.setAttribute("payresult", model.getAttribute("model"));
			
			//아래꺼order_list 페이지에서 사용 - 유진 추가
			//payservice.getOrderList(model, session);
			
			return "pay"; // "order_list";
		} else {
			bbsservice.getwrote(model, session);
			//답글가져오기
			return "wrote";
		}
	}
	
	//유진 임시 이동 컨트롤러
	@GetMapping("/practice")
	public String practice(Model model,HttpSession session) {
		//아래꺼order_list 페이지에서 사용 - 유진 추가
		payservice.getOrderList(model, session);
		return"order_list";
	}
	
	//내가 쓴 글
		@GetMapping("/search") //카테고리별 검색
		public String search(@RequestParam String category, Model model, HttpSession session) {
			bbsservice.getsearch(model, category, session);
			//bbsservice.getRewrote(model); 답글
			return "wrote";
		}
		@GetMapping("/wrotedetail")
		public String wrotedetail(@RequestParam int id, @RequestParam String category, Model model) {
			bbsservice.getdetail(id, category, model);
			return "wrotedetail";
		}
		@PostMapping("/list")
		public String list() {
			//상세보기->목록으로 돌아가기
			return "redirect:/movemypage/3";
		}
		@GetMapping("/modify/{id}")	//수정하기버튼
		public String modify(@PathVariable("id") int id, @RequestParam String category, @ModelAttribute("detail") WrotebbsVO vo, Model model) {
			bbsservice.getdetail(id, category, model);
			return "wroteModify";
		}
		@PostMapping("/modify")	//수정완료버튼
		public String modifydone(@ModelAttribute("detail")WrotebbsVO vo, @RequestParam("category") String category, @RequestParam("id") int id) {
			vo.setId(id);
			vo.setCategory(category);
			bbsservice.modify(vo);
			return "redirect:/wrotedetail?id="+vo.getId()+"&category="+vo.getCategory();
		}
		@GetMapping("/delete/{id}")
		public String delete(@PathVariable("id") int id, @RequestParam("category") String category) {
			WrotebbsVO vo = new WrotebbsVO();
			vo.setId(id);
			vo.setCategory(category);
			bbsservice.getdelete(vo);
			return "redirect:/movemypage/3";
		}
	
	//관리자페이지 -회원관리
	//관리자페이지 - 회원조회
	@GetMapping("/adminpage/{page}")
	public String adiminpage(Model model, @PathVariable("page") int page,
							@RequestParam String searchUser,
							@RequestParam String userInfo, PageVO vo) {
		if(page == 0) {
			vo.setNowPage(1);
		}
		vo.setNowPage(page);
		
		if((searchUser.equals("") || searchUser == null) && (userInfo.equals("") || userInfo == null)) {
			userservice.userlist(model, vo, page, "", "");
		} else if((!searchUser.equals("") || searchUser != null) && (userInfo.equals("")|| userInfo == null )){
			userservice.userlist(model, vo, page, searchUser, "");
		} else if((searchUser.equals("") || searchUser == null) && (!userInfo.equals("")|| userInfo != null )) {
			userservice.userlist(model, vo, page, "", userInfo);
		} else {
			userservice.userlist(model, vo, page, searchUser, userInfo);
			model.addAttribute("searchUser", searchUser);
			model.addAttribute("userInfo", userInfo);
		};
		return "adminUser/adminUser";
	}
	
	//회원정보 수정
	@GetMapping("/adminpagemodi/{page}")
	public String adiminpagemodi(Model model, @PathVariable("page") int page,
							@RequestParam String searchUser,
							@RequestParam String userInfo, PageVO vo) {
		if(page == 0) {
			vo.setNowPage(1);
		}
		vo.setNowPage(page);
		
		if((searchUser.equals("") || searchUser == null) && (userInfo.equals("") || userInfo == null)) {
			userservice.userlist(model, vo, page, "", "");
		} else if((!searchUser.equals("") || searchUser != null) && (userInfo.equals("")|| userInfo == null )){
			userservice.userlist(model, vo, page, searchUser, "");
		} else if((searchUser.equals("") || searchUser == null) && (!userInfo.equals("")|| userInfo != null )) {
			userservice.userlist(model, vo, page, "", userInfo);
		} else {
			userservice.userlist(model, vo, page, searchUser, userInfo);
			model.addAttribute("searchUser", searchUser);
			model.addAttribute("userInfo", userInfo);
		};
		return "adminUser/adminUserModify";
	}
	@GetMapping("/adminuserpopup")
	public String adminuserpopup(int id, Model model) {
		userservice.userlistmodi(model, id);
		return "adminUser/adminUserPopup";
	}
	@PatchMapping("/adminUserModify")
	@ResponseBody
	public UserVO adminUserModify(@RequestBody UserVO vo) {
		userservice.adminUserUpdate(vo);
		return vo;
	}
	
	//회원정보 삭제
	@GetMapping("/adminpagedel/{page}")
	public String adiminpagedel(Model model, @PathVariable("page") int page,
							@RequestParam String searchUser,
							@RequestParam String userInfo, PageVO vo) {
		if(page == 0) {
			vo.setNowPage(1);
		}
		vo.setNowPage(page);
		
		if((searchUser.equals("") || searchUser == null) && (userInfo.equals("") || userInfo == null)) {
			userservice.userlist(model, vo, page, "", "");
		} else if((!searchUser.equals("") || searchUser != null) && (userInfo.equals("")|| userInfo == null )){
			userservice.userlist(model, vo, page, searchUser, "");
		} else if((searchUser.equals("") || searchUser == null) && (!userInfo.equals("")|| userInfo != null )) {
			userservice.userlist(model, vo, page, "", userInfo);
		} else {
			userservice.userlist(model, vo, page, searchUser, userInfo);
			model.addAttribute("searchUser", searchUser);
			model.addAttribute("userInfo", userInfo);
		};
		return "adminUser/adminUserDelete";
	}
	@DeleteMapping("/adminUserDelete")
	@ResponseBody
	public UserVO adminUserDelete(@RequestBody UserVO vo) {
		userservice.adminUserDelete(vo);
		return vo;
	}

	
	// 관리자 페이지 - 상품정보
//	@GetMapping("/admin_product_list")
//	public String adminProductList() {
//		return "adminProduct/product_list";
//	}
	
	// 관리자 페이지 - 상품등록
	@GetMapping("/admin_product_insert")
	public String adminProductInsert() {
		return "adminProduct/product_insert";
	}
	
	// 관리자 페이지 - 상품수정
	@GetMapping("/admin_product_update")
	public String adminProductUpdate() {
		return "adminProduct/product_update";
	}
	
	// 관리자 페이지 - 상품삭제
	@GetMapping("/admin_product_delete")
	public String adminProductDelete() {
		return "adminProduct/product_delete";
	}
	
	// 상세페이지 -> 장바구니,구매하기로 보내기(수정)
	// 메인P 상품id -> 상품id 갖고 상세P 가서 DetailVO데이터 넣기
	@GetMapping("/detail/{id}")
	public String productId(@PathVariable("id") String id, Model model,
							@ModelAttribute("qnaVO") QnaVO qnavo,
							@ModelAttribute("page")PageVO pagevo,
							int page) {
		bbsservice.getQnaList(model);
		cartservice.getDetailContent(model, id);
		reviewservice.getReview(model, id);
		reviewservice.getComment(model, id);
		System.out.println("dhodksxk");
		page = pagevo.getNowPage();
		if( pagevo==null || page==0) {
			page = 1;
		}
		reviewservice.getPage(model, id, page);
		System.out.println("여기 오류떠야돼");
		return "detail";
	}

		// Qna게시판
		// 상품리스트P->QNA게시판P
		@GetMapping("/qna")
		public String getQna(Model model) {
			bbsservice.getQnaList(model);
			return "/qna/qna";
		}

		// QNA게시판P -> 제목누르면 content
		@GetMapping("/qna/{id}")
		public String getContent(@PathVariable("id") String id, Model model) {
			bbsservice.getQnaContent(model, id);
			return "/qna/content";
		}

		// Q&A qna P -> 글쓰기
		@GetMapping("/write")
		public String setBBS(@SessionAttribute("user") UserVO user, @ModelAttribute("qnaVO") QnaVO qnavo, Model model) {
			if (user != null) {
				String[] categoryList = { "로그인/회원가입문의", "상품문의", "주문/결제문의", "배송문의", "취소/교환/반품문의", "설치/a/s문의", "적립금/이벤트문의" };
				model.addAttribute("categoryList", categoryList);
				return "qna/write";
			} else {
				return "redirect:/login";
			}
		}

		@PostMapping("/write/good")
		public String setBBSResult(@SessionAttribute("user") UserVO user, QnaVO qnavo) {
			if (user != null) {
				qnavo.setOwnerId(user.getId());
				qnavo.setOwner(user.getUsername());
				if (bbsservice.insertQna(qnavo)) {
					return "redirect:/qna";
				} else {
					return "qna/write";
				}
			} else {
				return "redirect:/login";
			}
		}

		// Q&A 조회P->수정P
		@GetMapping("/update/{id}")
		public String setBBS(@SessionAttribute("user") UserVO user, Model model, @PathVariable("id") String id) {
			if (user != null) {
				bbsservice.getQnaContent(model, id);
				String[] categoryList = { "로그인/회원가입문의", "상품문의", "주문/결제문의", "배송문의", "취소/교환/반품문의", "설치/a/s문의", "적립금/이벤트문의" };
				model.addAttribute("categoryList", categoryList);
				return "/qna/modify";
			} else {
				return "redirect:/login";
			}
		}

		// Q&A 수정P 수정완료 버튼 누를 때
		@PostMapping("/update")
		public String setBBS(@SessionAttribute("user") UserVO user, @ModelAttribute("qnaVO") QnaVO qnavo) {
			qnavo.setOwner(user.getUsername());
			qnavo.setOwnerId(user.getId());
			if (bbsservice.updateQna(qnavo)) {
				return "redirect:/qna";
			} else {
				return "redirect:/update/" + qnavo.getId();
			}
		}

		// Q&A 조회P -> 삭제하기
		@GetMapping("/remove/{id}")
		public String deleteBBS(@SessionAttribute("user") UserVO user, @ModelAttribute("qnaVO") QnaVO qnavo,
				@PathVariable("id") String id) {
			qnavo.setOwner(user.getUsername());
			qnavo.setOwnerId(user.getId());
			if (bbsservice.deleteQna(qnavo)) {
				return "redirect:/qna";
			} else {
				return "redirect:/qna/" + qnavo.getId();
			}
		}

		
		// 공지사항
		
		@GetMapping("/notice")
		public String moveNotice(Model model) {
		bbsservice.selectNotice(model);
			return "notice/notice";
		}
		@GetMapping("/notice/{page}")
		public String moveDetailNotice(@PathVariable("page") int page, Model model) {
		bbsservice.selectDetailNotice(model, page);
			return "notice/notice_detail";
		}

		// 관리자메인P -> 관리자 정보수정 이동 //유저정보 담아야됨.
		@GetMapping("/admin_admin")
		public String adminAdmin() {
			return "/admin_admin";
		}

		// 관리자 로그아웃
		@GetMapping("/admin-logout")
		public String logout(HttpSession session) {
			session.invalidate();
			// session.removeAttribute("user");
			return "redirect:/";
		}
}
