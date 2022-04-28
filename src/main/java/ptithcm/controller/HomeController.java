package ptithcm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import ptithcm.bean.User;

@Controller
public class HomeController {
	@Autowired
	User user;
	
	@RequestMapping(value={"/", "trang-chu"})
	public String index() {
		return "index";
	}
	@ModelAttribute("user")
	public User getUser(){
		return user;
	}
	
	@RequestMapping("/home/{id}")
	public String testId(@PathVariable("id") Long id, ModelMap model) {
		
		System.out.println("id " + id);
		
		return "index";
	}
	
	/*
	 * @RequestMapping("/home/{id1}") public String testId1(@PathVariable("id1")
	 * String id, ModelMap model) {
	 * 
	 * System.out.println("id1 " + id);
	 * 
	 * return "index"; }
	 */
}
