package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import shop.controller.OrderController;

@Configuration
public class ControllerConfig {

	@Bean
	public OrderController orderController() {
		return new OrderController();
	}

}
