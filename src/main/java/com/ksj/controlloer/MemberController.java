package com.ksj.controlloer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ksj.model.MemberVO;
import com.ksj.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@GetMapping("/register")
	public String registerFrom(MemberVO vo) {
		return "/member/register";
	}
	
	@PostMapping("/register")
	public String register(MemberVO vo,RedirectAttributes rttr) {
		service.memberRegister(vo);
		return "redirect:/";
	}
	@GetMapping("/list")
	public String registerFrom(Model model) {
		model.addAttribute("memberList",service.Memberlist());
		return "member/memberList";
	}
}