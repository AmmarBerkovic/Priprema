package model;

public class Accommodation {
	private String name;
	private int price;
	private String type;
	private int roomNumb;
	private int floor;
	private boolean available;
	
	
	public boolean isAvailable() {
		return available;
	}
	public void setAvailable(boolean available) {
		this.available = available;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getRoomNumb() {
		return roomNumb;
	}
	public void setRoomNumb(int roomNumb) {
		this.roomNumb = roomNumb;
	}
	public int getFloor() {
		return floor;
	}
	public void setFloor(int floor) {
		this.floor = floor;
	}
	public Accommodation(String name, int price) {
		this.name = name;
		this.price = price;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
}
