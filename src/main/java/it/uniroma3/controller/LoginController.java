package it.uniroma3.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
	@RequestMapping("/login")
	public String login(){
		return "login";
	}
	
//	@RequestMapping("/")
//	public String homePage(Principal principal, Model model){
//		String name = principal.getName();
//		model.addAttribute("name", name);
//		return "redirect:/";
//	}

}
