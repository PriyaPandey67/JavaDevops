package com.niit.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.SupplierDao;
import com.niit.model.Product;
import com.niit.model.Supplier;
@Repository(value="SupplierDao")
@Transactional

public class SupplierDaoimpl implements SupplierDao {
	@Autowired
	SessionFactory sessionFactory;
	
	public void insertSupplier(Supplier s) {
		System.out.println("inside save");
		Session session = sessionFactory.openSession();
		Transaction t= session.getTransaction();
		t.begin();
		session.save(s);
		t.commit();
		System.out.println("outside save");
	
	}

	public List<Supplier> getSupplierList() {
		Session ssn=sessionFactory.openSession();
		ssn.beginTransaction();
		List<Supplier> list=ssn.createQuery("from Supplier").list();
		ssn.getTransaction().commit();
		return list;
}

	public Supplier getSupplierById(int id) {
		 Session ssn = sessionFactory.openSession(); 
		 ssn.beginTransaction();
		 Supplier s = (Supplier) ssn.load(Supplier.class, id); 
		  ssn.getTransaction().commit();
		return s;  
			}

}
