package org.hj.model;

public class LoginVO {

	
	private String id;
	private String password;
	private String liked;
	private String email;
	private String uname;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLiked() {
		return liked;
	}
	public void setLiked(String liked) {
		this.liked = liked;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Override
	public String toString() {
		return "LoginVO [id=" + id + ", password=" + password + ", liked=" + liked + ", email=" + email + ", uname="
				+ uname + "]";
	}
	
	
	
	
	
	
}
