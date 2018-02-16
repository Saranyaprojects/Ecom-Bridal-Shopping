package com.niit.Test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.ProductDAO;
import com.niit.Model.Product;

public class productTest {
	
	public static void main (String[] args) {

		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.*");
		context.refresh();
		
		ProductDAO productDAO = (ProductDAO) context.getBean("ProductDAO");
		Product product = (Product) context.getBean("product");
		product.setProductName("fdknmfg");
		productDAO.saveOrUpdate(product);
	}
}
