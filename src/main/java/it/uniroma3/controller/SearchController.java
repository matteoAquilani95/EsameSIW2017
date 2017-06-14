package it.uniroma3.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import it.uniroma3.model.Artist;
import it.uniroma3.service.ArtistService;

@Controller
public class SearchController {
	
	@Autowired
	private ArtistService artistService;
	
	@RequestMapping("/search")
	public ModelAndView searchArtist(@RequestParam("m") String nameArtist){
		Artist artist = artistService.findOneWithNameWithPictures(nameArtist);
		return new ModelAndView("artist-detail","artist", artist);
	}

}
