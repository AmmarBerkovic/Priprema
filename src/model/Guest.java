package model;

import java.util.Date;
import java.util.List;

public class Guest {
	private String name;
	private String surname;
	private int numberOfId;
	private int age;
	private Date firstDay;
	private String nickName;
	private String password;
	private Accommodation acc;
	private List<Service> serv;
	
	public Guest (int id,String pass,String name, String nick) {
		this.numberOfId=id;
		this.password=pass;
		this.name=name;
		this.nickName=nick;
	}

	public Guest(String name, String surname, int numberOfId, int age, Date firstDay, String nickName, String password,
			Accommodation acc) {
		this.name = name;
		this.surname = surname;
		this.numberOfId = numberOfId;
		this.age = age;
		this.firstDay = firstDay;
		this.nickName = nickName;
		this.password = password;
		this.acc = acc;
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

	public int getNumberOfId() {
		return numberOfId;
	}

	public void setNumberOfId(int numberOfId) {
		this.numberOfId = numberOfId;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Date getFirstDay() {
		return firstDay;
	}

	public void setFirstDay(Date firstDay) {
		this.firstDay = firstDay;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Accommodation getAcc() {
		return acc;
	}

	public void setAcc(Accommodation acc) {
		this.acc = acc;
	}

	public List<Service> getServ() {
		return serv;
	}

	public void setServ(List<Service> serv) {
		this.serv = serv;
	}

}
