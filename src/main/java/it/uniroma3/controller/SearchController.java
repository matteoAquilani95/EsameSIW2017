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
	
	
	@RequestMapping("/search")
	public String searchPage(){
		return "SearchPage";
	}
	
	@RequestMapping("/searchArtist")
	public ModelAndView searchPictureForNameArtist(@RequestParam("seatchArtist") String nameArtist){
		
		if(nameArtist.equals("")){
			ModelAndView model = new ModelAndView("SearchPage","errorMsg", "You haven't entered anything");
			model.addObject("error", true);
			return model;
		}
		else{
				List<Artist> artists = artistService.findArtistWithName(nameArtist);
				if(artists.isEmpty()){
					ModelAndView model = new ModelAndView("SearchPage","errorMsg", "Artist not found ");
					model.addObject("error", true);
					return model;
				}
				else{
					ModelAndView model = new ModelAndView("artists","artists", artists);
					return model;
				}
				
		}
		
		
	}
	
	@RequestMapping("/searchTitlePicture")
	public ModelAndView searchPictureForTitle(@RequestParam("searchTitlePicture")String titlePicture){
		if(titlePicture.equals("")){
			ModelAndView model = new ModelAndView("SearchPage","errorMsg", "You haven't entered anything");
			model.addObject("error", true);
			return model;
		}
		else{
				PictureArt picture = pictureService.findByTitle(titlePicture);
				if(picture != null){
					return new ModelAndView("picture-detail","picture", picture);
				}
				else{
					ModelAndView model = new ModelAndView("SearchPage","errorMsg", "Picture not found");
					model.addObject("error", true);
					return model;
				}
				
			}
		
	}
	
	@RequestMapping("/searchDate")
	public ModelAndView searchPictureForDate(@RequestParam("searchDate")String creationDate){
			
		if(creationDate.equals("")){
			ModelAndView model = new ModelAndView("SearchPage","errorMsg", "You haven't entered anything");
			model.addObject("error", true);
			return model;
		}
		else{
			List<PictureArt> pictures = pictureService.findByCreationDate(creationDate);
			if(pictures.isEmpty()){
				ModelAndView model = new ModelAndView("SearchPage","errorMsg", "Picture not found");
				model.addObject("error", true);
				return model;
			}
			else
				return new ModelAndView("pictures","picturesL", pictures);
		}
	}

}
