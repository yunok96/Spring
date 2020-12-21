package shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OrderController {
	
	@GetMapping("/order")
	public String hello(Model model,
			@RequestParam(value = "productName", required = false) String productName
			,@RequestParam(value = "amount", required = false) String amount
			) {
		model.addAttribute("productName", productName);
		model.addAttribute("amount", amount);
		return "orderConfirm";
	}
}
