package main.vo;

import java.time.LocalDateTime;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Data
public class Member {
	private int id;
	private String email;
	private String name;
	@JsonIgnore
	private String password;
	private LocalDateTime reg_date;
}
