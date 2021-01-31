package main.vo;

import java.time.LocalDateTime;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Board {
	private int id;
	private String title;
	private String content;
	private LocalDateTime reg_date;
	private int memberId;
	private MultipartFile file;
	private String fileName;
	private String server_fileName;
}
