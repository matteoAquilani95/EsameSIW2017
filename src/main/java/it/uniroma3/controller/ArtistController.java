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
	
	//construct
	
	@ModelAttribute("artist")
	public Artist constructArtist(){
		return new Artist();
	}
	
	//new Artist
	
	@RequestMapping("/artist")
	public String showArtistForm(){
		return "newArtist";
	}
	
	@RequestMapping(value="/artist", method = RequestMethod.POST)
	public ModelAndView newArtist(@Valid @ModelAttribute("artist") Artist artist, BindingResult result){
		if(result.hasErrors())
			return new ModelAndView("newArtist","errorDate", "it's a wrong date");
		else{
			artistService.save(artist);
			return new ModelAndView("redirect:/artist?success=true");
		}
	}
	
	//Get Artist
	
	@RequestMapping("/artists")
	public String listArtist(Model model){
		model.addAttribute("artists", artistService.findAll());
		return "artists";
	}
	
	@RequestMapping("/artists/{id}")
	public String getArtista(@PathVariable Long id, Model model){
		Artist artist = artistService.findOneWithPictures(id);
		model.addAttribute("pictures", artist.getPictures());
		model.addAttribute("artist", artist);
		return "artist-detail";
	}
	
	//Delete Artist
	
	@RequestMapping("/artists/remove/{id}")
	public String deleteArtista(@PathVariable Long id){
		artistService.delete(id);
		return "redirect:/artists";
	}
	
	//edit l'artista
	
	@RequestMapping("/edit/{id}")
	public String editArtist(@PathVariable Long id, Model model){
		Artist artist = artistService.findOne(id);
		model.addAttribute("artist", artist);
		return "editArtist";
	}
	
	@RequestMapping(value="/edit/{id}", method = RequestMethod.POST)
	public ModelAndView editCrudArtist(@PathVariable Long id, @ModelAttribute("artist") Artist artist, BindingResult result){
		if(result.hasErrors())
			return new ModelAndView("editArtist","artist", artist);
		else{
			artistService.save(artist);
			return new ModelAndView("redirect:/artists");
		}
	}
	

}
