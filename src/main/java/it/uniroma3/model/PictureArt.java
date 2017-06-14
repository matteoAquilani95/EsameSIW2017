package it.uniroma3.model;


import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.URL;
import org.springframework.format.annotation.NumberFormat;

@Entity
public class PictureArt {
	
	@Id
	@GeneratedValue
	private Long id;
	
	@Size(min=1, message="this camp can't be null")
	private String title;
	
	@URL(message="this isn't a URL")
	private String link; //dove viene salvata la foto del quadro
	
	@NumberFormat
	private Integer creationDate;
	
	@Size(min=1, message="this camp can't be null")
	private String technique;
	
	private String dimension;
	
	@ManyToOne(cascade = CascadeType.PERSIST)
	private Artist artist;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(Integer creationDate) {
		this.creationDate = creationDate;
	}

	public String getTechnique() {
		return technique;
	}

	public void setTechnique(String technique) {
		this.technique = technique;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getDimension() {
		return dimension;
	}

	public void setDimension(String dimension) {
		this.dimension = dimension;
	}

	public Artist getArtist() {
		return artist;
	}

	public void setArtist(Artist artist) {
		this.artist = artist;
	}
	
	

}
