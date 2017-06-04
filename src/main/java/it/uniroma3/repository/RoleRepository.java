package it.uniroma3.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import it.uniroma3.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{

	Role findByName(String name);

}
