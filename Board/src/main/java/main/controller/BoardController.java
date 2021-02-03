package main.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import main.service.BoardService;
import main.service.CommentService;
import main.vo.Board;
import main.vo.Comment;
import main.vo.Member;
import main.vo.RestObject;

@Controller
public class BoardController {
	@Autowired
	private BoardService boardService;
	@Autowired
	private CommentService commentService;
	@Value("${file.upload.location}")
	private String location;
	
	@RequestMapping("board")
	public ModelAndView boardView() throws Exception {
		ModelAndView mav = new ModelAndView("boardView");
		mav.addObject("boardList", boardService.selectBoard(null));
		return mav;
	}
	@RequestMapping("board/{id}")
	public ModelAndView boardDetailView(@PathVariable("id") Integer id) {
		ModelAndView mav = new ModelAndView("boardDetailView");
		mav.addObject("boardList", boardService.selectBoard(id));
		return mav;
	}
	@GetMapping("board/{id}/get")
	@ResponseBody
	public ResponseEntity getComment(@PathVariable("id") Integer id) {
		List<Comment> commentList = commentService.selectComment(id);
		return new ResponseEntity(commentList, HttpStatus.OK);
	}
	@PostMapping("board/{id}/post")
	public ResponseEntity addComment(@PathVariable("id") Integer id, @RequestBody Comment comment, HttpSession session) {
		comment.setBoardId(id);
		comment.setMemberId(((Member)session.getAttribute("user")).getId());
		if(1 == commentService.insertComment(comment)) {
			return ResponseEntity.ok(new RestObject("0","성공"));
		} else {
			return ResponseEntity.ok(new RestObject("1","실패"));
		}
	}
	@GetMapping("write")
	public ModelAndView createBoard() {
		ModelAndView mav = new ModelAndView("createBoard");
		mav.addObject("board", new Board());
		return mav;
	}
	@PostMapping("write")
	public ModelAndView createBoardDone(Board board, HttpSession session) throws IllegalStateException, IOException {
		ModelAndView mav = null;
		boolean isFile = (0 != board.getFile().getSize());
		if(isFile) {
			String fileName = board.getFile().getOriginalFilename();
			String server_fileName = System.currentTimeMillis() + "_" + fileName;
			File file = new File(location + server_fileName);
			board.setFileName(fileName);
			board.setServer_fileName(server_fileName);
			board.getFile().transferTo(file);
		}
		board.setMemberId(((Member)session.getAttribute("user")).getId());
		if(1 == boardService.insertBoard(board)) {
			mav = new ModelAndView("alertPage");
			mav.addObject("error", "The article is successfully saved.");
			mav.addObject("link", "/board");
		} else {
			mav = new ModelAndView("alertPage");
			mav.addObject("error", "There was error on saving the article");
			mav.addObject("link", "/write");
		}
		return mav;
	}
}
