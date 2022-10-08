package com.ksj.controlloer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ksj.model.BoardVO;
import com.ksj.model.Criteria;
import com.ksj.model.PageMarker;
import com.ksj.service.BoardService;

@Controller
@RequestMapping("board")
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	@GetMapping("/list")
	public String boardList(Model model, Criteria criteria) {
		System.out.println(criteria.getCategory());
		PageMarker pageMarker = new PageMarker(criteria, service.totalCount(criteria)); 
		model.addAttribute("list",service.list(criteria));
		model.addAttribute("pageMarker", pageMarker);
		return "board/list";
	}
	
	@GetMapping("/get")
	public String get(Model model, Long bno) {
		model.addAttribute("board", service.get(bno));
		return "board/get";
	}
	
	@GetMapping("/register") //등록화면
	public String registerForm() {
		return "board/register";
	}
	
	
	@PostMapping("/register")
	public String register(BoardVO board, RedirectAttributes rttr) {
		service.register(board);
		rttr.addFlashAttribute("message", board.getBno());
		return "redirect:list?category="+board.getCategory();
	}
	
	@GetMapping("/modify")
	public String modifyForm(Long bno, Model model) {
		model.addAttribute("board", service.get(bno));
		return "board/modify";
	}
	@PostMapping("/modify")
	public String modify(BoardVO board, RedirectAttributes rttr) {
		service.modify(board);
		rttr.addFlashAttribute("message", board.getBno());
		return "redirect:list";
	}
	
	@PostMapping("/remove")
	public String remove(Long bno, RedirectAttributes rttr) {		
		service.remove(bno);
		rttr.addFlashAttribute("message", bno);
		return "redirect:list";
	}
}
