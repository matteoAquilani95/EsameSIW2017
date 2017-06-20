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
import it.uniroma3.model.PictureArt;
import it.uniroma3.service.ArtistService;
import it.uniroma3.service.PictureService;

@Controller
public class PictureController {

	@Autowired
	private PictureService pictureService;
	@Autowired
	private ArtistService artistService;

	@ModelAttribute("picture")
	public PictureArt constructPictureArt(){
		return new PictureArt();
	}

	@RequestMapping("/picture")
	public String newPicture(){
		return "NewPicture";
	}

	@RequestMapping("/picture/{id}")
	public ModelAndView newPictureWithId(@PathVariable Long id){
		Artist artist = artistService.findOne(id);
		ModelAndView model = new ModelAndView("NewPicture");
		model.addObject("artistID", artist.getId());
		return model;
	}
	
	@RequestMapping("/picture/remove/{id}")
	public String removePicture(@PathVariable("id") Long id){
		Artist artist = pictureService.findOne(id).getArtist();
		pictureService.remove(id);
		return "redirect:/pictureList/"+artist.getId();
	}

	//pictureArt
	@RequestMapping(value="/picture/{id}", method = RequestMethod.POST)
	public ModelAndView newPicture(@PathVariable("id") Long id, @Valid @ModelAttribute("picture") PictureArt picture, 
							BindingResult result){
		if(result.hasErrors()){
			return new ModelAndView("NewPicture", "artistID", id);
		}
		else{
			
			Artist artist = artistService.findOne(id);
			picture.setArtist(artist);
			pictureService.save(picture);
			return new ModelAndView("redirect:/picture/"+id+"?success=true");			
		}
	}
	
	//
	@RequestMapping("/pictureList/{id}")
	public String getListPictures(@PathVariable("id") Long id, Model model){
		Artist artist = artistService.findOneWithPictures(id);
		model.addAttribute("picturesL", artist.getPictures());
		model.addAttribute("artist", artist);
		return "pictures";
	}
	
	@RequestMapping("/pictureList/detail/{id}")
	public String getDetailPicture(@PathVariable("id") Long id, Model model){
		PictureArt picture = pictureService.findOne(id);
		model.addAttribute("picture", picture);
		return "picture-detail";
	}
}

