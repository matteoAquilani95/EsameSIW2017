package it.uniroma3.model;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.springframework.beans.factory.annotation.Autowired;

@Entity
public class Artist {
	
	@Id
	@GeneratedValue
	private Long id;
	
	@Size(min=1,message="this camp can't be null")
	private String name;
	
	@Size(min=1,message="this camp can't be null")
	private String surname;
	
	@Size(min=1,message="this camp can't be null")
	private String nationality;
	
	@Temporal(TemporalType.DATE)
	@Past
	private Date dateOfBirth;
	
	@Temporal(TemporalType.DATE)
	private Date deathDate;
	
	@OneToMany(mappedBy="artist", cascade = {CascadeType.REMOVE, CascadeType.PERSIST})
	private List<PictureArt> pictures;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public Date getDeathDate() {
		return deathDate;
	}

	public void setDeathDate(Date deathDate) {
		this.deathDate = deathDate;
	}

	public List<PictureArt> getPictures() {
		return pictures;
	}

	public void setPictures(List<PictureArt> pictures) {
		this.pictures = pictures;
	}
	
	

}
