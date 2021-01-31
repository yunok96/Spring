package main.vo;

import lombok.Data;

@Data
public class SignInData {
	private String email;
	private String password;
	private boolean checked;
}
