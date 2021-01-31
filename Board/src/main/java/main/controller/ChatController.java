package main.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import main.vo.Member;

@Controller
public class ChatController {
	@RequestMapping("/chat")
	public ModelAndView chatMain(/*HttpSession session*/) {
		ModelAndView mav = new ModelAndView("/chat");
//		mav.addObject("userName", ((Member)session.getAttribute("user")).getName());
		return mav;
	}
}
