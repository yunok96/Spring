package spring;


public class LoginService {
	private MemberDao memberDao;

	public LoginService(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	public String isTrue(LoginData loginData) {
		
		return memberDao.selectByEmail(loginData.getEmail()).getEmail();
		
	}
}
