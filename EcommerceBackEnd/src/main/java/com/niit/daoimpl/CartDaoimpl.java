package com.niit.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CartDao;
import com.niit.model.Cart;
import com.niit.model.Product;
@Repository(value="CartDao")
@Transactional


public class CartDaoimpl implements CartDao {
	@Autowired
	SessionFactory sessionFactory;

	public void insert(Cart c) {
		System.out.println("inside save");
		Session session = sessionFactory.openSession();
		Transaction t= session.getTransaction();
		t.begin();
		session.save(c);
		t.commit();
		System.out.println("outside save");
	
		
	}

	

	public Cart getCart(int id) {
		Session ssn = sessionFactory.openSession(); 
	 ssn.beginTransaction();
	 Cart c = (Cart) ssn.load(Cart.class, id); 
	  ssn.getTransaction().commit();
	return c;  
	}

	public int updateCart(Cart id) {
		Session session = sessionFactory.openSession();
	    session.beginTransaction();
	    session.saveOrUpdate(id);
	 System.out.println("Updated Successfully");
	  session.getTransaction().commit();
	return 0;
	}

	public List<Cart> getCartItem() {
		Session ssn=sessionFactory.openSession();
		ssn.beginTransaction();
		List<Cart> list=ssn.createQuery("from Cart").list();
		ssn.getTransaction().commit();
		return list;
	}


	public void deleteCartItem(int id) {
		Session ssn=sessionFactory.openSession();
	    ssn.beginTransaction();
		  Cart c = (Cart)ssn.load(Cart.class, id);
		  ssn.delete(c);
		  ssn.getTransaction().commit();
		
		
	}

}
