package main.exception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

@Component
public class InterceptorTest implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		String req = request.getRequestURI();
		switch (req) {
		case "/member":
			if (null == request.getSession().getAttribute("user")) {
				request.setAttribute("error", "회원 목록을 보려면 로그인해주세요.");
				request.getRequestDispatcher("alertPage").forward(request, response);
				return false;
			} else {
				return true;
			}
		case "/write":
			if (null == request.getSession().getAttribute("user")) {
				request.setAttribute("error", "게시글을 작성하려면 로그인해주세요.");
				request.getRequestDispatcher("alertPage").forward(request, response);
				return false;
			} else {
				return true;
			}
		default:
			return true;
		}
	}
}
