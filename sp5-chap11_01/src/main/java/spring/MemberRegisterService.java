package spring;

import java.time.LocalDateTime;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberRegisterService {
	
	@Autowired
	private SqlSession sqlSession;

	public Long regist(RegisterRequest req) {
		Member member = sqlSession.selectOne("MemberMapper.selectMember", req);
		if (member != null) {
			throw new DuplicateMemberException("dup email " + req.getEmail());
		}
		Member newMember = new Member(
				req.getEmail(), req.getPassword(), req.getName(), 
				LocalDateTime.now());
		sqlSession.insert("MemberMapper.insertMember",newMember);
		return newMember.getId();
	}
}
