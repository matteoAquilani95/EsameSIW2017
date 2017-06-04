package it.uniroma3.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;

@Entity
@Table(name = "app_user")
public class User {
	
	@Id
	@GeneratedValue
	private Long id;
	
	@Size(min=3, message="devi inserire piu di 3 caratteri")
	private String name;
	
	@Size(min=1, message="email non valida")
	@Email(message="email non valida")
	private String email;
	
	@Size(min=5, message="devi inserire piu di 5 caratteri")
	private String password;
	
	private boolean enabled;
	
	@ManyToMany
	@JoinTable
	private List<Role> roles;
	
	/*@OneToMany(mappedBy="user", cascade = CascadeType.REMOVE)
	private List<Blog> blogs;*/

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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	
	
	
		
}
