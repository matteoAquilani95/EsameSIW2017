package it.uniroma3.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import it.uniroma3.model.User;

public interface UserRepository extends JpaRepository<User, Long>{

	User findByName(String nameUser);

}
