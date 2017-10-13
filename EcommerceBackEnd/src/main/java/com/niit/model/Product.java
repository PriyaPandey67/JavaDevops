package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
@Entity
@Table(name="Product")
@Component
public class Product {
	@Id
	@GeneratedValue
	private int productid;
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="id")
	private Supplier supplier;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="catid")
	private Category category1;

private String productname;


    private int stock;
	private String description;
	private int price;
	private String imagename;
	@Transient
	private MultipartFile image;
	public int getProductid() {
		return productid;
	}
	public void setProductid(int  productid) {
		this. productid = productid;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}

	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getImagename() {
		return imagename;
	}
	public void setImagename(String imagename) {
		this.imagename = imagename;
	}
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	
	   public Category getCategory1() {
			return category1;
		}
		public void setCategory1(Category category1) {
			this.category1 = category1;
		}
	
	
	
}
