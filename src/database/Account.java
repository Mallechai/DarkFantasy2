package database;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.GenericGenerator;

import characterclasses.Player;

@Entity
public class Account {
	private Long id;
	@NotNull
	@Size(min = 2, message = "Username must be at least 2 characters long")
	private String username;
	@NotNull
	@Size(min = 4, message = "Password must be at least 4 characters long")
	private String password;
	private Player player;
	
	
	@Id
	@GeneratedValue(generator="increment")
	@GenericGenerator(name="increment", strategy = "increment")
	public Long getId() {
		return id;
	}
	
	public Account(){}
	
	@OneToOne
	public Player getPlayer(){
		return this.player;
	}
	
	@NotNull
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	@NotNull
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public void setPlayer(Player player) {
		this.player = player;
	}
	
	@SuppressWarnings("unused")
	private void setId(Long id) {
		this.id = id;
	}
	
	@Override
	public String toString(){
		return this.username;
	}

}
