package model;

public class Admin {
	private String name;
	private String pass;
	
	public Admin (String name,String password) {
		this.name=name;
		this.pass=password;
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
}
