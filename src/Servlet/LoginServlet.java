package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Connection.MyUltis;
import DBManager.GiaoVienDB;
import Model.GiaoVien;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		GiaoVien user = MyUltis.getLoginedUser(session);
		String action = request.getParameter("action");
		String errorString = "";
		boolean isError = false;
		if (user != null) {
			response.sendRedirect(request.getContextPath() + "/MainView"); // kiem tra dang nhap
		} else if (action != null && "logout".equals(action)) {
			MyUltis.deleteUserCookie(response);
			MyUltis.changeViewServlet("Login", request, response); // kiem tra dang nhap
		} else if (action != null && "login".equals(action)) {
			String userId = request.getParameter("userInput");
			String pass = request.getParameter("passwordInput");
			GiaoVienDB giaoViendb = new GiaoVienDB();
			user = new GiaoVien(userId, pass);
			if (userId == "" || pass == "") {
				errorString = "Filed your text pls";
				isError = true;
			} else if (giaoViendb.check(user)) {
				user = giaoViendb.find(user.getMaGiaoVien());
				MyUltis.storeLoginedUser(session, user);
				MyUltis.storeUserCookie(response, user);					// cookie
				response.sendRedirect(request.getContextPath() + "/MainView");
			} else {
				errorString = "Wrong Password or User";
				isError = true;
			}
			if (isError == true) {
				request.setAttribute("errorString", errorString);
				request.setAttribute("user", user);
				 MyUltis.changeViewPage(MyUltis.VIEW_NAME_LOGINVIEW, this.getServletContext(), request, response);;
			}

		} else
			MyUltis.changeViewPage(MyUltis.VIEW_NAME_LOGINVIEW, this.getServletContext(), request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
