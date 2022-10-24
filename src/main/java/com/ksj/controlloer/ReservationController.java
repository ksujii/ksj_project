package com.ksj.controlloer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ksj.mapper.ReservationMapper;
import com.ksj.model.ReservationVO;
import com.ksj.service.ReservationService;

@RequestMapping("/reserve")
@Controller
public class ReservationController {
	
	@Autowired
	private ReservationService service;
	
	@GetMapping("/form")
	public String reserveForm(Model model, Long rno) {
		model.addAttribute("roomNames", service.getRoomNames());
		if(rno!=null) {
			model.addAttribute("room", service.getRoom(rno));
		}
		return "reservation/form";
	}
	
	//예약처리
	@PostMapping
	public String reserv(ReservationVO vo) {
		//TODO:예약불가능 객실이면 예외던지기
		service.reserve(vo);
		return "home";
		
	}
	
	//예약안내페이지
	@GetMapping("/guide")
	public String guide() {
		return "reservation/guide";
	}
	
	//예약확인(관리자)
	@GetMapping("/listA")
	public String listAdmin(Model model) {
		model.addAttribute("reservationList", service.reserveList());
		return "reservation/listA";
	}
	
	//예약확인(고객)
		@GetMapping("/registerC")
		public String listForm() {
			return "reservation/registerC";
		}
		
		@PostMapping("/listC")
		public String listCustomer() {
			return "reservation/listC";
		}
	

}
