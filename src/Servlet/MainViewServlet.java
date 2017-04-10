package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Connection.MyUltis;
import Model.GiaoVien;

/**
 * Servlet implementation class WelcomeServlet
 */
@WebServlet("/MainView")
public class MainViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String viewString = "";
		String action = request.getParameter("action");
		HttpSession session = request.getSession();
		GiaoVien user = (GiaoVien) MyUltis.getLoginedUser(session);	
		if(user == null)
			response.sendRedirect(request.getContextPath() + "/Login");
		else
			MyUltis.changeViewPage(MyUltis.VIEW_NAME_MAINVIEW, this.getServletContext(), request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
