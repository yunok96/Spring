package main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.mapper.BoardMapper;
import main.vo.Board;

@Service
public class BoardService {
	@Autowired
	private BoardMapper mapper;
	public List<Board> selectBoard(Integer id) {
		return mapper.selectBoard(id);
	}
	public int insertBoard(Board board) {
		return mapper.insertBoard(board);
	}
}
