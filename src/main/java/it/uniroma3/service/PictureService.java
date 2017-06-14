package it.uniroma3.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.uniroma3.model.Artist;
import it.uniroma3.model.PictureArt;
import it.uniroma3.repository.PictureRepository;

@Service
@Transactional
public class PictureService {
	
	@Autowired
	private PictureRepository pictureRep;
	
	public List<PictureArt> findAll(){
		return pictureRep.findAll();
	}
	
	public void save(PictureArt picture){
		pictureRep.save(picture);
	}
	
	public PictureArt findOne(Long id){
		return pictureRep.findOne(id);
	}
	
	public void remove(Long id){
		pictureRep.delete(id);
	}

	public PictureArt findByTitle(String title) {
		return pictureRep.findByTitle(title);
	}

}
