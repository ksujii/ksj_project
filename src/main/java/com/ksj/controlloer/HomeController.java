package com.ksj.controlloer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	//@RequestMapping(value = "/main", method = RequestMethod.GET)
	@GetMapping("/")
	public String home() {
		return "home"; //view �̸�
	}
	
	@GetMapping("/tour")
	public String tour() {
		return "tour";
	}
	
	@GetMapping("/aboutvally01")
	public String aboutvally01() {
		return "aboutvally01";
	}
	
	@GetMapping("/aboutvally02")
	public String aboutvally02() {
		return "aboutvally02";
	}
	
	@GetMapping("/reservation01")
	public String reservation01() {
		return "reservation01";
	}
	@GetMapping("/reservation02")
	public String reservation02() {
		return "reservation02";
	}
	
	@GetMapping("/preview02")
	public String priview02() {
		return "preview02";
	}


}
