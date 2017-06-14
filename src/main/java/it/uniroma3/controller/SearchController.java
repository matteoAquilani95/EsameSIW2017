package it.uniroma3.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import it.uniroma3.model.Artist;
import it.uniroma3.model.PictureArt;
import it.uniroma3.service.ArtistService;
import it.uniroma3.service.PictureService;

@Controller
public class SearchController {
	
	@Autowired
	private ArtistService artistService;
	@Autowired
	private PictureService pictureService;
	
	@RequestMapping("/searchArtist")
	public ModelAndView searchArtist(@RequestParam("seatchArtist") String nameArtist){
		Artist artist = artistService.findOneWithNameWithPictures(nameArtist);
		ModelAndView model = new ModelAndView("pictures","artist", artist);
		model.addObject("picturesL", artist.getPictures());
		return model;
	}
	
	@RequestMapping("/searchTitlePicture")
	public ModelAndView searchTitle(@RequestParam("searchTitlePicture")String titlePicture){
		PictureArt picture = pictureService.findByTitle(titlePicture);
		return new ModelAndView("picture-detail","picture", picture);
	}

}
