package main.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import main.vo.Comment;

@Repository
@Mapper
public interface CommentMapper {
	public List<Comment> selectComment(Integer id);
	public int insertComment(Comment comment);
}
