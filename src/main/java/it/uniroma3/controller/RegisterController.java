package it.uniroma3.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import it.uniroma3.model.User;
import it.uniroma3.service.UserService;

@Controller
@RequestMapping("/register")
public class RegisterController {
	
	@Autowired
	private UserService userService;
	
	@ModelAttribute("user")
	public User constructUser(){
		return new User();
	}
	
	@RequestMapping
	public String showRegister(){
		return "user-register";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView newRegister(@Valid @ModelAttribute("user") User user, BindingResult result){
		if(result.hasErrors())
			return new ModelAndView("user-register");
		else{
			if(!exists(user.getEmail())){
				userService.save(user);
				return new ModelAndView("redirect:/register?success=true");
			}
			else
				return new ModelAndView("user-register", "errorRegister", "alredy exists an account with this email");
		}
	}
	
	private boolean exists(String email){
		try{
			userService.findOneWithEmail(email);
			return true;
		}catch(NullPointerException e){
			return false;
		}		
	}

}
