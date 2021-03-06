package com.niit.Test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.CartDAO;
import com.niit.Model.Cart;

public class cartTest {
	public static void main (String[] args) {

		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.*");
		context.refresh();

		CartDAO cartDAO = (CartDAO) context.getBean("CartDAO");
		Cart cart = (Cart) context.getBean("cart");
		
		cart.setProductName("dfhjj");
		cartDAO.saveOrUpdate(cart);
	}
}
