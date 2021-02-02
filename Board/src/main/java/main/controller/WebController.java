package main.controller;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import main.exception.ConfirmPasswordExeption;
import main.service.MemberService;
import main.vo.Member;
import main.vo.SignInData;
import main.vo.SignUpData;

@Controller
public class WebController {

	@Autowired
	private MemberService memberService;

	@RequestMapping(value = {"/index", "/"})
	public String mainPage() {
		return "index";
	}

	@RequestMapping("/member")
	public ModelAndView memberPage() throws Exception {
		ModelAndView mav = new ModelAndView("member");
		mav.addObject("memberList", memberService.selectMember(null));
		return mav;
	}
	
//	@RequestMapping("/member/{id}")
//	public ModelAndView memberPageNum(@PathVariable("id") Integer id) throws Exception {
//		ModelAndView mav = new ModelAndView("member");
//		mav.addObject("memberList", memberService.selectMember(id));
//		return mav;
//	}

	@GetMapping("/signup")
	public ModelAndView signUpPage() throws Exception {
		ModelAndView mav = new ModelAndView("signup");
		mav.addObject("signUpdata", new SignUpData());
		return mav;
	}

	@PostMapping("/signup")
	public ModelAndView signUpDone(SignUpData data) {
		ModelAndView mav = null;
		try {
			if (1 == memberService.insertMember(data)) {
				mav = new ModelAndView("alertPage");
				mav.addObject("error", "Sign up success. Welcome, "+data.getName()+"!");
				mav.addObject("link", "/");
				mav.addObject("name", data.getName());
			} else {
				mav = new ModelAndView("signup");
			}
			return mav;
		} catch (ConfirmPasswordExeption e) {
			mav = new ModelAndView("/alertPage");
			mav.addObject("error", "Password or confirm password you entered don\\'t match. Please check again.");
			mav.addObject("link", "signup");
			return mav;
		}
	}

	@GetMapping("/signIn")
	public ModelAndView signInPage(@ModelAttribute SignInData signInData, @CookieValue(value="signInData", required = false) Cookie ck) {
		ModelAndView mav = new ModelAndView("signIn");
		if(null != ck) {
			signInData.setEmail(ck.getValue());
			signInData.setChecked(true);
		}
		return mav;
	}
	
	@PostMapping("/signIn")
	public ModelAndView signInDone(SignInData data, HttpSession session, HttpServletResponse resp) {
		ModelAndView mav = null;
		Member member = memberService.selectMemberByEmail(data.getEmail());
		if(member.getPassword().equals(data.getPassword())) {
			session.setAttribute("user", member);
			Cookie ck = new Cookie("signInData", member.getEmail());
			if(data.isChecked()) {
				ck.setMaxAge(60*60*6);
				ck.setPath("/signIn");
				resp.addCookie(ck);
			} else {
				ck.setValue(null);
				ck.setMaxAge(0);
				ck.setPath("/signIn");
				resp.addCookie(ck);
			}
			mav = new ModelAndView("index");
		} else {
			mav = new ModelAndView("alertPage");
			mav.addObject("error", "The email and password you entered don\\'t match any account. Please try again.");
		}
		return mav;
	}
	@RequestMapping("signOut")
	public String signOutDone(HttpSession session) {
		session.invalidate();
		return "index";
	}
	@RequestMapping("/alertPage")
	public String alert() {
		return "alertPage";
	}
}
