package com.niit.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;


import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
//import org.springframework.transaction.annotation.Transactional;-working

import com.niit.dao.ProductDao;
import com.niit.model.Product;

@Repository
@Transactional
public abstract class ProductDaoimpl implements ProductDao {
	@Autowired
	SessionFactory sessionFactory;

	public void insertProduct(Product p) {
		System.out.println("inside save");
		//Session session = sessionFactory.openSession();
		//Transaction t= session.getTransaction();
		//t.begin();
		//session.save(p);
		//t.commit();
		//System.out.println("outside save");
		sessionFactory.getCurrentSession().save(p);
		 System.out.println("Updated Successfully");
	
		
	
		
	}

	public List<Product> getProductList() {
		Session ssn=sessionFactory.openSession();
		ssn.beginTransaction();
		List<Product> list=ssn.createQuery("from Product").list();
		ssn.getTransaction().commit();
		return list;
//return sessionFactory.getCurrentSession().createQuery("from Product").list();	    
	}

	

	public void deleteProduct(int id) {
		Session ssn=sessionFactory.openSession();
	    ssn.beginTransaction();
		  Product p = (Product)ssn.load(Product.class, id);
		  ssn.delete(p);
		  ssn.getTransaction().commit();
		
	}

	public Product getProduct(int id) {
		 Session ssn = sessionFactory.openSession(); 
		 ssn.beginTransaction();
		 Product p = (Product) ssn.load(Product.class, id); 
		  ssn.getTransaction().commit();
		return p;  
		
	}

	public void update(Product p) {
		
	Session ss=	sessionFactory.getCurrentSession();
	//Product pp=getProduct(p.getProductid());
   // ss.beginTransaction();
	ss.saveOrUpdate(p);
	//ss.getTransaction().commit();
	
		// System.out.println("Updated Successfully");
		//
		
	}

	public List<Product> getProCategory(int catid) {
		Session ss=	sessionFactory.openSession();
	Transaction t=ss.getTransaction();
        t.begin();
        List<Product> list=ss.createQuery("from Product where catid="+catid).list();
        t.commit();
		return list;
	}

	

	
		
	}


