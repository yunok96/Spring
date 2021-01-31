package main.vo;

import lombok.Data;

@Data
public class SignUpData {
	private String email;
	private String password;
	private String confirmPassword;
	private String name;
	
	public boolean confirmPasswordNotEqual() {
		boolean result = false;
		if(!password.equals(confirmPassword)) {
			result = true;
		}
		return result;
	}
}
