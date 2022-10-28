package com.goodee.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.goodee.dao.ProjectDAO;
import com.goodee.vo.ReviewCommentVO;
import com.goodee.vo.ReviewVO;

@Service
public class ReviewService {

	public ProjectDAO dao;

	public ReviewService(ProjectDAO dao) {
		super();
		this.dao = dao;
	}
	
	//Review
	public void getReview(Model model, String id) {
		model.addAttribute("review", dao.getReview(id));
		model.addAttribute("reviewCount", dao.getReviewCount(id));
		int[] num = {dao.getStarGradeCount1(id),
					dao.getStarGradeCount2(id),
					dao.getStarGradeCount3(id),
					dao.getStarGradeCount4(id),
					dao.getStarGradeCount5(id)};
		model.addAttribute("starGradeCount", num);
		model.addAttribute("starGradeAvg", dao.getStarGradeAvg(id));
		model.addAttribute("pic", dao.getPic(id));
		model.addAttribute("picCount", dao.getPicCount(id));
		model.addAttribute("commentCount", dao.commentCount());
	}
	
	public void getComment(Model model, String id) {
		//상품id 보내서 댓글들 가져온다음에 프론트에서 댓글id랑 review_id랑 일치하면 가져오기
		model.addAttribute("comment", dao.getComment(id));
	}
	
	public ReviewVO photoSelect(int id) {
		return dao.getSelectReview(id);
	}
	public void hitsPlus(int id, int hits) {
		dao.hitsPlus(id, hits);
	}
	public int afterPlus(int id) {
		return dao.afterPlus(id);
	}
	public void commnetInsert(ReviewCommentVO vo) {
		dao.putComment(vo);
	}
}
