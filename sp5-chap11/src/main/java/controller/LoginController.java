package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.LoginData;
import spring.LoginService;

@Controller
public class LoginController {

	@RequestMapping("/login/input")
	public String handleStep1(Model model) {
		model.addAttribute("loginData", new LoginData());
		return "login/input";
	}

	@PostMapping("/login/result")
	public String handleStep3(LoginData loginData) {
		if("yunok96".equals(loginData.getEmail())) {
			if("yunok96".equals(loginData.getEmail())) {
				
			}
		}
		return "login/result";
	}

}
