package com.niit.dao;

import java.util.List;

import com.niit.model.Product;

public interface ProductDao {
	public void insertProduct(Product p);
	public List<Product> getProductList();
    public void deleteProduct(int id); 
    public Product getProduct(int id);
    public void update(Product pro); 
    //public List<Product> getCategoryList();
   // public int update(Product productid);
    public List<Product> getProCategory(int catid);
}
