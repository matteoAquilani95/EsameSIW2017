package it.uniroma3.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
	
	@ModelAttribute("artistEdit")
	public Artist constructEditArtist(){
		return new Artist();
	}
	
	@RequestMapping("/artist")
	public String showArtistForm(){
		return "newArtist";
	}
	
	@RequestMapping("/EditArtist")
	public String showArtistEditForm(){
		return "editArtist";
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
	
	@RequestMapping("/artists/{id}")
	public String getArtista(@PathVariable Long id, Model model){
		Artist artist = artistService.findOne(id);
		model.addAttribute("artist", artist);
		return "artist-detail";
	}
	
	@RequestMapping("/artists/remove/{id}")
	public String deleteArtista(@PathVariable Long id){
		artistService.delete(id);
		return "redirect:/artists";
	}
	
	@RequestMapping(value="/artistEdit", method = RequestMethod.POST)
	public String ReditArtist(@Valid @ModelAttribute("artist") Artist artist, BindingResult result){
		if(result.hasErrors())
			return "editArtist";
		else{
			artistService.Edit(artist);
			return "redirect:/EditArtist?success=true";
		}
	}
	
	@RequestMapping("/artists/edit/{id}")
	public ModelAndView editArtist(@PathVariable Long id){
		Artist artist = artistService.findOne(id);
		ModelAndView model = new ModelAndView("editArtist");
		model.addObject("artist", artist);
		return model;
	}
	
	
	

}
