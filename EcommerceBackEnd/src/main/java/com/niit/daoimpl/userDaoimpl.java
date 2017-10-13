package com.niit.daoimpl;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.userDao;

import com.niit.model.User;

@Repository(value="userDao")
@Transactional
public class userDaoimpl implements userDao {
	@Autowired
	SessionFactory sessionFactory;
	
	public void saveUser(User u) {
		System.out.println("inside save");
		Session session = sessionFactory.openSession();
		Transaction t= session.getTransaction();
		t.begin();
		session.save(u);
		t.commit();
		System.out.println("outside save");
	
		}
	
	}




