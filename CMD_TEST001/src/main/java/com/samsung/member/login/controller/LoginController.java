package com.samsung.member.login.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.samsung.member.vo.Member;

@Controller
@RequestMapping("/member")
public class LoginController {

	@RequestMapping("/loginPage")
	public String loginPage(Model model) {
		model.addAttribute("member", new Member());
		return "/member/login/loginPage";
	}

	@PostMapping("/login")
	public String login(@Valid Member member,Errors errors) {
		if (errors.hasErrors())
			return "/member/login/loginPage";
		if ("steve@test.com".equals(member.getEmail()) && "1234".equals(member.getPassword())) {
			return "redirect:/main";
		} else {
			return "redirect:/member/loginPage";
		}
	}
}
