package com.springmvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.springmvc.entity.User;
import com.springmvc.service.UserService;

@Controller
public class HomeController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/home")
	public String home(Model m)
	{
		m.addAttribute("name", "Seema");
		m.addAttribute("id", 101);
		
		return "home";
	}

		
	@RequestMapping("/register")
	public String signup()
	{		
		return "register";
	}
	
	@RequestMapping(path="/createUser", method= RequestMethod.POST)
	public String registerUser(@ModelAttribute User user, @RequestParam("img") String img,Model m )
	{
		user.setImage(img);
		userService.saveUser(user);
		System.out.println(user);
		System.out.println("Thanku...");
		return "success";
	}
}
