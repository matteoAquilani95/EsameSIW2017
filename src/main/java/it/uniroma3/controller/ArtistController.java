package it.uniroma3.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import it.uniroma3.model.Artist;
import it.uniroma3.service.ArtistService;

@Controller
public class ArtistController {
	
	@Autowired
	private ArtistService artistService;
	
	@ModelAttribute("artist")
	public Artist constructArtist(){
		return new Artist();
	}
	
	@RequestMapping("/artist")
	public String showArtistForm(){
		return "newArtist";
	}
	
	@RequestMapping(value="/artist", method = RequestMethod.POST)
	public String newArtist(@Valid @ModelAttribute("artist") Artist artist, BindingResult result){
		if(result.hasErrors())
			return "newArtist";
		else{
			artistService.save(artist);
			return "redirect:/artist?success=true";
		}
	}
	
	@RequestMapping("/artists")
	public String listArtist(Model model){
		model.addAttribute("artists", artistService.findAll());
		return "artists";
	}
	
	
	

}
