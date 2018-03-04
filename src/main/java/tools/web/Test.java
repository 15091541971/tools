package tools.web;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import tools.dao.UserDao;
import tools.model.User;

@Controller
//@RequestMapping("/user")

public class Test {
	@Autowired
	private UserDao userDao;
	@RequestMapping("/user/register")
	/*@ResponseBody*/
	public String register() {
		
		return "user";
		
		
	}
	@RequestMapping("/getUser")
	public ModelAndView getUserByUserId(String  userId) {
		User user=userDao.selectUser(userId);
		System.out.println(user);
		Map<String, Object> map=new HashMap<>();
		map.put("user", user);
		return new ModelAndView("user", map);
		
	}
	

	
}
