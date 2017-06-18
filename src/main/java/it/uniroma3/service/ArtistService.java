package it.uniroma3.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.uniroma3.model.Artist;
import it.uniroma3.model.PictureArt;
import it.uniroma3.repository.ArtistRepository;
import it.uniroma3.repository.PictureRepository;

@Service
@Transactional
public class ArtistService {
	
	@Autowired
	private ArtistRepository artistRep;
	@Autowired
	private PictureRepository pictureRep;
	
	public List<Artist> findAll(){
		return artistRep.findAll();
	}
	
	public Artist findOne(Long id){
		return artistRep.findOne(id);
	}
	
	public Artist findOneWithName(String name){
		Artist artist = artistRep.findByName(name);
		return findOne(artist.getId());
	}
	
	public void save(Artist artist){
		artistRep.save(artist);
	}
	
	public void delete(Long id){
		artistRep.delete(id);
	}

	public Artist findOneWithPictures(Long id) {
		Artist artist = findOne(id);
		List<PictureArt> pictures = pictureRep.findByArtist(artist);
		artist.setPictures(pictures);
		return artist;
	}

	public Artist findOneWithNameWithPictures(String name) {
		Artist artist = artistRep.findByName(name);
		List<PictureArt> pictures = pictureRep.findByArtist(artist);
		artist.setPictures(pictures);
		return artist;
	}
	
	public List<Artist> findArtistWithName(String name){
		List<Artist> artists = artistRep.findAllByName(name);
		return artists;
	}

}
