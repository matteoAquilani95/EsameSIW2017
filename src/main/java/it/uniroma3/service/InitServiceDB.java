package it.uniroma3.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import it.uniroma3.model.Artist;
import it.uniroma3.model.PictureArt;
import it.uniroma3.model.Role;
import it.uniroma3.model.User;
import it.uniroma3.repository.ArtistRepository;
import it.uniroma3.repository.PictureRepository;
import it.uniroma3.repository.RoleRepository;
import it.uniroma3.repository.UserRepository;

@Transactional
@Service
public class InitServiceDB {
	
	@Autowired
	private RoleRepository roleRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private ArtistRepository artistRepository;
	@Autowired
	private PictureRepository pictureRepository;
	
	@PostConstruct
	public void init(){
		
		Role roleUser = new Role();
		roleUser.setName("ROLE_USER");
		roleRepository.save(roleUser);
		
		Role roleAdmin = new Role();
		roleAdmin.setName("ROLE_ADMIN");
		roleRepository.save(roleAdmin);
		
		User userAdmin = new User();
		userAdmin.setName("admin");
		userAdmin.setEmail("admin@gmail.com");
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		userAdmin.setPassword(encoder.encode("admin"));
		userAdmin.setEnabled(true);
		List<Role> roles = new ArrayList<Role>();
		roles.add(roleAdmin);
		roles.add(roleUser);
		userAdmin.setRoles(roles);
		userRepository.save(userAdmin);
		
		
		Artist artist = new Artist();
		artist.setName("Michelangelo");
		artist.setSurname("Buonarroti");
		artist.setNationality("Italy");
		artist.setDateOfBirth(new Date("1475/3/6"));
		
		
		PictureArt picture = new PictureArt();
		picture.setTitle("Creazione di Adamo");
		picture.setCreationDate(1511);
		picture.setTechnique("Affresco");
		picture.setDimension("258x560");
		
		picture.setLink("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Michelangelo_-_Creation_of_Adam.jpg/1280px-Michelangelo_-_Creation_of_Adam.jpg");
		
				
		List<PictureArt> pictures = new LinkedList<PictureArt>();
		pictures.add(picture);
		artist.setPictures(pictures);
		
		artistRepository.save(artist);
		picture.setArtist(artist);
		pictureRepository.save(picture);
		
		
	}

}
