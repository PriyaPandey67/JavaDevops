package com.niit.dao;

import java.util.List;

import com.niit.model.Category;

public interface CategoryDao {
	public void insertCategory(Category c);
	public List<Category> getCategoryList();
	public Category getCategoryById(int id);
}
