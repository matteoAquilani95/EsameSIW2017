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
		List<Role> roles = new LinkedList<Role>();
		roles.add(roleAdmin);
		roles.add(roleUser);
		userAdmin.setRoles(roles);
		userRepository.save(userAdmin);
		
		User userAdmin2 = new User();
		userAdmin2.setName("utente");
		userAdmin2.setEmail("utente@gmail.com");
		userAdmin2.setPassword(encoder.encode("utente"));
		userAdmin2.setEnabled(true);
		List<Role> roles2 = new LinkedList<Role>();
		roles2.add(roleUser);
		userAdmin2.setRoles(roles2);
		userRepository.save(userAdmin2);
		
		
		Artist artist = new Artist();
		artist.setName("Michelangelo");
		artist.setSurname("Merisi (Caravaggio)");
		artist.setNationality("Italy");
		artist.setDateOfBirth(new Date("1571/9/29"));
		artist.setDeathDate(new Date("1610/7/18"));
		
		
		PictureArt picture = new PictureArt();
		picture.setTitle("Narciso");
		picture.setCreationDate(1599);
		picture.setTechnique("Olio su tela");
		picture.setDimension("112x92");
		
		picture.setLink("https://upload.wikimedia.org/wikipedia/it/thumb/d/de/Michelangelo_Caravaggio_065.jpg/250px-Michelangelo_Caravaggio_065.jpg");
		
				
		List<PictureArt> pictures = new LinkedList<PictureArt>();
		pictures.add(picture);
		artist.setPictures(pictures);
		
		artistRepository.save(artist);
		picture.setArtist(artist);
		pictureRepository.save(picture);
		
		
	}

}
