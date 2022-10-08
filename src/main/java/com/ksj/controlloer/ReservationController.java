package com.ksj.controlloer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ksj.service.ReservationService;

@RequestMapping("/reserve")
@Controller
public class ReservationController {
	
	@Autowired
	private ReservationService service;
	
	@GetMapping("/form")
	public String reserveForm(Model model) {
		model.addAttribute("roomNames", service.getRoomNames());
		return "reservation/form";
	}
	
	@GetMapping("/guide")
	public String guide() {
		return "reservation/guide";
	}
	

}
