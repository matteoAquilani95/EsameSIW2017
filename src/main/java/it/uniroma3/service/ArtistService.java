package it.uniroma3.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.uniroma3.model.Artist;
import it.uniroma3.model.User;
import it.uniroma3.repository.ArtistRepository;

@Service
@Transactional
public class ArtistService {
	
	@Autowired
	private ArtistRepository artistRep;
	
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
	
	public void Edit(Artist artist){
		Artist artistOld = artistRep.findOne(artist.getId());
		artistRep.delete(artistOld.getId());
		artistOld.setName(artist.getName());
		artistOld.setSurname(artist.getSurname());
		artistOld.setNationality(artist.getNationality());
		artistRep.save(artistOld);
	}
	
	public void delete(Long id){
		artistRep.delete(id);
	}

}
