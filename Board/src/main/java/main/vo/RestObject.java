package main.vo;

import lombok.Data;

@Data
public class RestObject {
	private String result_code;
	private String result_msg;
	public RestObject(String a, String b) {
		this.result_code=a;
		this.result_msg=b;
	}
}
