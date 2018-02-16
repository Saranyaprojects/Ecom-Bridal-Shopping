package com.niit.Controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.Dao.ProductDAO;
import com.niit.Dao.RoleDAO;
import com.niit.Dao.UserDAO;
import com.niit.Model.Product;
import com.niit.Model.Role;
import com.niit.Model.User;

@Controller
public class UserController {

	@Autowired
	private UserDAO UserDao;
	
	@Autowired
	private ProductDAO ProductDao;
	
	@Autowired
	private RoleDAO RoleDao;

	@Autowired
	private Role role;
	

	@RequestMapping("addNewUser")
	public String addUser(@ModelAttribute User user, Model model) {
		 String message;
		 if (UserDao.isAllReadyRegister(user.getEmailId(), true)) {
			message = "Your emailId is Already registered you have to login";

		} else {

			user.setEnabled(true);
			role.setEmailId(user.getEmailId());
			role.setRole("ROLE_USER");
			role.setUserName(user.getUserName());
			role.setContactNumber(user.getContactNumber());

			user.setRole(role);
			role.setUser(user);	

			UserDao.saveOrUpdate(user);
			RoleDao.saveOrUpdate(role);
			
			
			message = "You have Successfully Registered";
		}
		model.addAttribute("message", message);
		model.addAttribute("loginButtonClicked", true);
		return "home";

	}
	
 @RequestMapping("/afterlogin") public String loginProcess(Principal p,Model model){
	  
	  String email = p.getName();
	  
      System.out.println(email);
	  
	  User user =  UserDao.getByEmailId(email);
	  
	  Role role = RoleDao.getByEmailId(email);
	  
	  String role1 = role.getRole();
	  
	  if(role1.equals("ROLE_ADMIN"))
	  {
	  
	  return "home"; 
	  }
	  else if(role1.equals("ROLE_USER")){
			List<Product> product = ProductDao.getByFeatured();
			model.addAttribute("product", product);
			model.addAttribute("userLoggedIn", "true");
			return "home";
		}
	  else {
	  
	  return "home";
	  }
	  }

}
