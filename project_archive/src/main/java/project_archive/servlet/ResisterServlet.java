package project_archive.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project_archive.dao.ArchiveDao;

@WebServlet("/resiste")
public class ResisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/jsp; charset=utf-8");
		HttpSession session = request.getSession(true);
		session.setMaxInactiveInterval(5);

		String userid = request.getParameter("userid");
		String password = request.getParameter("password");

		ArchiveDao dao = new ArchiveDao();
		try {
			int rs = dao.doResister(userid, password);
			Cookie cookie = new Cookie("userid", userid);
			cookie.setPath("/project_archive/");
			if (rs < 1) {
				session.setAttribute("isResiste", "회원가입에 실패했습니다.");
				cookie.setMaxAge(0);
				response.addCookie(cookie);
				response.sendRedirect(request.getContextPath() + "login.jsp");
			} else {
				cookie.setMaxAge(60 * 60 * 24);
				response.addCookie(cookie);

				session.setAttribute("isResiste", "회원가입에 성공했습니다. 로그인 하세요");
				session.setMaxInactiveInterval(60 * 60 * 24);
				
				response.sendRedirect(request.getContextPath() + "index.jsp");}
		} catch (SQLException e) {
			System.err.println("ResisterServlet에서 오류 발생: " + e);
			session.setAttribute("isResiste", "회원가입에 실패했습니다.");
			session.setAttribute("isLogin", false);
			response.sendRedirect(request.getContextPath() + "login.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
