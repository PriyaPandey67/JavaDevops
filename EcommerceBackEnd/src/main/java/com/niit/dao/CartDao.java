package com.niit.dao;

import java.util.List;

import com.niit.model.Cart;


public interface CartDao {
	public void insert(Cart c);
	public List<Cart> getCartItem();
    public void deleteCartItem(int id); 
    public Cart getCart(int id);
    public int updateCart(Cart id);  


}
