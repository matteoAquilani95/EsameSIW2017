package it.uniroma3.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import it.uniroma3.model.Artist;

public interface ArtistRepository extends JpaRepository<Artist, Long>{

	Artist findByName(String name);

	List<Artist> findAllByName(String name);

}
