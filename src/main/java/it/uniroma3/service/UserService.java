package it.uniroma3.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import it.uniroma3.model.Role;
import it.uniroma3.model.User;
import it.uniroma3.repository.RoleRepository;
import it.uniroma3.repository.UserRepository;

@Service
@Transactional
public class UserService {
	
	@Autowired
	private UserRepository userRep;
	@Autowired
	private RoleRepository roleRep;
	
	public List<User> findAll(){
		return userRep.findAll();
	}
	
	public User findOne(Long id){
		return userRep.findOne(id);
	}
	
	public void save(User user) {
		user.setEnabled(true);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		user.setPassword(encoder.encode(user.getPassword()));
		
		List<Role> roles = new ArrayList<Role>();
		roles.add(roleRep.findByName("ROLE_USER"));
		user.setRoles(roles);
		
		userRep.save(user);
	}
	
	public User findOneWithName(String nameUser) {
		User user = userRep.findByName(nameUser);
		return findOne(user.getId());
	}
	
	public void delete(Long id) {
		userRep.delete(id);		
	}

	public User findOneWithEmail(String emailUser) {
		User user = userRep.findByEmail(emailUser);
		return findOne(user.getId());
	}

}
