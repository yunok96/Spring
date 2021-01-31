package main.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import main.vo.Member;
import main.vo.SignUpData;

@Repository
@Mapper
public interface MemberMapper {
	List<Member> selectMember(Integer id);
	
	int insertMember(SignUpData signUpData);
	
	Member selectMemberByEmail(String email);
}
