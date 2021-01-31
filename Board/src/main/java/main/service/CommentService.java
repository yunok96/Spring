package main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.mapper.CommentMapper;
import main.vo.Comment;

@Service
public class CommentService {
	@Autowired
	private CommentMapper mapper;
	public List<Comment> selectComment(Integer id) {
		return mapper.selectComment(id);
	}
	public int insertComment(Comment comment) {
		return mapper.insertComment(comment);
	}
}
