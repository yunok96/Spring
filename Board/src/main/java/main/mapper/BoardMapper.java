package main.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import main.vo.Board;

@Repository
@Mapper
public interface BoardMapper {
	public List<Board> selectBoard(Integer id);
	public int insertBoard(Board board);
}
