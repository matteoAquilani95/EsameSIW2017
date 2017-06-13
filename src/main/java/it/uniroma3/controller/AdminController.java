package it.uniroma3.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import it.uniroma3.service.UserService;

@Controller
public class AdminController {

	@Autowired
	private UserService userService;
	
	
	@RequestMapping("/account")
	public String account(Model model, Principal principal) {
		String nameUser = principal.getName(); // riporta il nome dell'user
		model.addAttribute("user", userService.findOneWithName(nameUser));
		return "user-account";
	}
	
	@RequestMapping("/users")
	public String users(Model model){
		model.addAttribute("users", userService.findAll());
		return "users";
	}
	
	/*@RequestMapping("/{id}")
	public String detail(Model model, @PathVariable Long id){
		model.addAttribute("user", userService.findOne(id));
		return "user-detail";
	}*/
	
	@RequestMapping("users/remove/{id}")
	public String removeUser(@PathVariable Long id){
		userService.delete(id);
		return "redirect:/users";
	}
}
