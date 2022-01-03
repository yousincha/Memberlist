package com.example.project.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.project.model.dto.MemberVO;
import com.example.project.service.MemberService;

@Controller
public class MemberController {

	@Inject
	MemberService memberService;
	
	@RequestMapping("member/list.do")
	public String memberList(Model model) {
		List<MemberVO> list = memberService.memberList();
		model.addAttribute("list", list);
		return "member/member_list";
	}
	
	@RequestMapping("member/insert.do")
	public String memberInsert(@ModelAttribute MemberVO vo) {
		memberService.insertMember(vo);
		return "redirect:/member/list.do"; 
	}
	
	@RequestMapping("member/write.do")
	public String memberWrite() {
		return "member/member_write";
	}
	
	@RequestMapping("member/view.do")
	public String memberView(String userId, Model model) {
		model.addAttribute("dto", memberService.viewMember(userId));
		return "member/member_view";
	}
	@RequestMapping("member/update.do")
	public String memberUpdate(@ModelAttribute MemberVO vo, Model model)
	{
		boolean result=memberService.checkPw(vo.getUserId(), vo.getUserPw());
		if(result) {
			memberService.updateMember(vo);
			return "redirect:/member/list.do";
		}else {
			model.addAttribute("dto",vo);
			model.addAttribute("message","비밀번호불일치");
			return "member/member_view";
		}
		
	}
	@RequestMapping("member/delete.do")
	public String memberDelete(@ModelAttribute MemberVO vo, Model model)
	{
		boolean result=memberService.checkPw(vo.getUserId(), vo.getUserPw());
		if(result) {
			memberService.deleteMember(vo.getUserId());
			return "redirect:/member/list.do";
		}else {
			model.addAttribute("message","비밀번호불일치");
			model.addAttribute("dto",memberService.viewMember(vo.getUserId()));
			return "member/member_view";
		}
		
	}
	
}
