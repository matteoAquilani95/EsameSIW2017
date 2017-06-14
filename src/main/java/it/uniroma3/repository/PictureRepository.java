package it.uniroma3.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import it.uniroma3.model.Artist;
import it.uniroma3.model.PictureArt;

public interface PictureRepository extends JpaRepository<PictureArt, Long>{

	List<PictureArt> findByArtist(Artist artist);

	PictureArt findByTitle(String title);

}
