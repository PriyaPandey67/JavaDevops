package com.niit.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CategoryDao;
import com.niit.model.Category;
import com.niit.model.Supplier;


@Repository(value="CategoryDao")
@Transactional

public class CategoryDaoimpl implements CategoryDao {
	@Autowired
	SessionFactory sessionFactory;
	public void insertCategory(Category c) {
		System.out.println("inside save");
		Session session = sessionFactory.openSession();
		Transaction t= session.getTransaction();
		t.begin();
		session.save(c);
		t.commit();
		System.out.println("outside save");
	
		
	}

	public List<Category> getCategoryList() {
		Session ssn=sessionFactory.openSession();
		ssn.beginTransaction();
		List<Category> list=ssn.createQuery("from Category").list();
		ssn.getTransaction().commit();
		return list;

	}

	public Category getCategoryById(int id) {
		Session ssn = sessionFactory.openSession(); 
		 ssn.beginTransaction();
		 Category c = (Category) ssn.load(Category.class, id); 
		  ssn.getTransaction().commit();
		return c;  
		
	}

	
	
}
