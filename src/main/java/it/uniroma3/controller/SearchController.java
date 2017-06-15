package it.uniroma3.controller;


import java.util.List;

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
	public ModelAndView searchPictureForNameArtist(@RequestParam("seatchArtist") String nameArtist){
		try{
			Artist artist = artistService.findOneWithNameWithPictures(nameArtist);
			ModelAndView model = new ModelAndView("pictures","artist", artist);
			model.addObject("picturesL", artist.getPictures());
			return model;
		}catch(NullPointerException e){
			return new ModelAndView("errorSearch","error", "No artist exists with this name");
		}
		
	}
	
	@RequestMapping("/searchTitlePicture")
	public ModelAndView searchPictureForTitle(@RequestParam("searchTitlePicture")String titlePicture){
		try{
			PictureArt picture = pictureService.findByTitle(titlePicture);
			return new ModelAndView("picture-detail","picture", picture);
		}catch(NullPointerException e){
			return new ModelAndView("errorSearch","error", "No picture exists with this title");
		}
		
	}
	
	@RequestMapping("/searchDate")
	public ModelAndView searchPictureForDate(@RequestParam("searchDate")String creationDate){
			List<PictureArt> pictures = pictureService.findByCreationDate(creationDate);
			
			if(pictures.isEmpty())
				return new ModelAndView("errorSearch","error", "No picture exists with this date");
			
			return new ModelAndView("pictures","picturesL", pictures);		
	}

}
