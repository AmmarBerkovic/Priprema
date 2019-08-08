package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DLL;

/*
 * Razlog linija koda 22 i 23 je sto zelim produziti trajanje njihovog
 * postojanja na serveru Jedina mana je to sto uduplavam prostor u memoriji, ali
 * samo dok traje request? Kad mi se odgovori na gornje pitanje znat cu da li je
 * to cons ove prakse i da li je uopste upraznjavati
 * 
 */
/*
 * HttpSession session = request.getSession(); session.setAttribute("nick",
 * request.getAttribute("nick")); session.setAttribute("pass",
 * request.getAttribute("pass"));
 */
@WebServlet("/LogAcceptance")
public class LogAcceptance extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("nick", request.getAttribute("nick"));
		session.setAttribute("pass", request.getAttribute("pass"));
		try {
			if (DLL.LogCheck(request.getParameter("typeUser"), request.getParameter("nick"),
					request.getParameter("pass"))) {
				if (request.getParameter("typeUser").equals("guests")) {
					request.getRequestDispatcher("GuestPage.jsp").forward(request, response);
				} else if (request.getParameter("typeUser").equals("admins")) {
					request.getRequestDispatcher("AdminPage.jsp").forward(request, response);
				} else if (request.getParameter("typeUser").equals("")) {
					System.out.println("Jebiga kralju xd");
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
