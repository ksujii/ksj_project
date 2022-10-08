package com.ksj.controlloer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ksj.model.RoomVO;
import com.ksj.service.RoomService;

@Controller
@RequestMapping("/room")
public class RoomController {
	
	@Autowired
	private RoomService service;
	
	//객실등록폼
	@GetMapping("/register")
	public String registerForm() {
		return "room/register";
	}
	
	//객실등록화면
	@PostMapping("/register")
	public String register(RoomVO vo,RedirectAttributes rttr) {
		System.out.println("RoomController:register():"+vo);
		rttr.addFlashAttribute("message", "객실등록을 완료하였습니다.");		
		service.register(vo);
		return "redirect:register";
	}
	
	//객실안내
	@GetMapping("/list")
	public String list(Model model){
		model.addAttribute("roomlist", service.list());
		service.list();
		return "room/list";
	}
}
