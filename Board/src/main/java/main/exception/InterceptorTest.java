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
				request.setAttribute("error", "Please sign in to view members");
				request.setAttribute("link", "/signIn");
				request.getRequestDispatcher("/alertPage").forward(request, response);
				return false;
			} else {
				return true;
			}
		case "/write":
			if (null == request.getSession().getAttribute("user")) {
				request.setAttribute("error", "Please sign in to write articles");
				request.setAttribute("link", "/signIn");
				request.getRequestDispatcher("/alertPage").forward(request, response);
				return false;
			} else {
				return true;
			}
		default:
			return true;
		}
	}
}
