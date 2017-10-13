package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="ordr")
@Component
public class Order {
	@Id
	@GeneratedValue
	private int orderid;
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="email")
	private User user;
   private double totalamount;
   private String Payamentype;
    public int getOrderid() {
	return orderid;
}
public void setOrderid(int orderid) {
	this.orderid = orderid;
}
public double getTotalamount() {
	return totalamount;
}
public void setTotalamount(double totalamount) {
	this.totalamount = totalamount;
}
public User getUser() {
	return user;
}
public void setUser(User user) {
	this.user = user;
}
public String getPayamentype() {
	return Payamentype;
}
public void setPayamentype(String payamentype) {
	Payamentype = payamentype;
}

	
}
