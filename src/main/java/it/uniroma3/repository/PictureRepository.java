package it.uniroma3.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import it.uniroma3.model.PictureArt;

public interface PictureRepository extends JpaRepository<PictureArt, Long>{

}
