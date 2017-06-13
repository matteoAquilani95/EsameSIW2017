package it.uniroma3.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
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

	//pictureArt

	@RequestMapping(value="/picture/{id}", method = RequestMethod.POST)
	public ModelAndView newPicture(
			@RequestParam("file") MultipartFile file,
			HttpSession session,
			@PathVariable("id") Long id,
			@Valid @ModelAttribute("picture") PictureArt picture, 
			BindingResult result){


		if(result.hasErrors()){
			return new ModelAndView("NewPicture", "artistID", id);
		}
		else{
			if (!file.isEmpty()){
				Artist artist = artistService.findOne(id);				

				try{
					byte[] bytes = file.getBytes();

					ServletContext context = session.getServletContext();
					String path = context.getRealPath("/WEB-INF/resources/pictureArt");
					String filename = file.getOriginalFilename();

					String contentType = file.getContentType();

					if (contentType.equals("image/pjpeg") || 
							contentType.equals("image/jpeg") || 
							contentType.equals("image/png") || 
							contentType.equals("image/gif") || 
							contentType.equals("image/bmp") || 
							contentType.equals("image/x-png")) 
					{
						if(filename.length() > 20)
							throw new Exception();

						File dir = new File(path+"/"+id);
						if (!dir.exists())
							dir.mkdir();

						BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(  
								new File(path+"/"+id + File.separator + filename)));

						stream.write(bytes);  

						stream.flush();  
						stream.close(); 

						picture.setLink(filename);
						picture.setArtist(artist);
						pictureService.save(picture);
						return new ModelAndView("redirect:/picture/"+id+"?success=true");
					}
					else
					{
						throw new Exception();
					}

				
				}//end try 				
				catch (Exception e) {
					ModelAndView model = new ModelAndView("NewPicture", "artistID", id);
					model.addObject("errorFile", "Errore nell'inserimento della foto, formato non valido");
					return model;
				}
			}
			ModelAndView model = new ModelAndView("NewPicture", "artistID", id);
			model.addObject("errorFile", "Insert file is empty");
			return model;
		}

	}
}

