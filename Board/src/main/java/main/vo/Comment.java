package main.vo;

import lombok.Data;

@Data
public class Comment {
	private int id;
	private int boardId;
	private int memberId;
	private String comment;
}
