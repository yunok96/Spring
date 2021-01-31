package main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.exception.ConfirmPasswordExeption;
import main.mapper.MemberMapper;
import main.vo.Member;
import main.vo.SignUpData;

@Service
public class MemberService {
	@Autowired
	private MemberMapper mapper;
	public List<Member> selectMember(Integer id) {
		return mapper.selectMember(id);
	}
	
	public int insertMember(SignUpData signUpData) {
		if(signUpData.confirmPasswordNotEqual()) {
			throw new ConfirmPasswordExeption();
		}
		return mapper.insertMember(signUpData);
	}
	
	public Member selectMemberByEmail(String email) {
		return mapper.selectMemberByEmail(email);
	}
}
