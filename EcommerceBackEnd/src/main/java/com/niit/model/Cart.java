package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


	@Entity
	@Table(name="Cart")
	public class Cart{
		@Id
		@GeneratedValue
		private int cartid;
		private int quantity;
		public int getCartid() {
			return cartid;
		}
		public void setCartid(int cartid) {
			this.cartid = cartid;
		}
		public int getQuantity() {
			return quantity;
		}
		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}

}
