package com.samsung.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.samsung.member.login.controller.LoginController;

@Configuration
public class ControllerConfig {

	@Bean
	public LoginController loginController() {
		return new LoginController();
	}
}
