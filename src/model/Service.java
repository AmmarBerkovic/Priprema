package model;

public class Service {
	private int price;
	private String name;
	
	Service (String name){
		this.name=name;
	}

	/*
	 * private boolean nameCheck() {
		if (this.name.equals("Gym")) {
			this.price=10;
			return true;
		} else if (this.name.equals("Theater")) {
			this.price=10;
			return true;
		} else if (this.name.equals("Restaurant")) {
			this.price=20;
			return true;
		} else if (this.name.equals("Saona")) {
			this.price=10;
			return true;
		} else if (this.name.equals("Pool")) {
			this.price=10;
			return true;
		} else 
			return false;

	}
	 */

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
}
