package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Member;


@WebServlet("/Mproc2")
public class MemberJoinProc2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Member member = new Member();
		member.setId(request.getParameter("id"));
		member.setEmail(request.getParameter("email"));
		member.setAddress(request.getParameter("address"));
		member.setPassword(request.getParameter("password"));
		member.setPhone(request.getParameter("phone"));
		
		request.setAttribute("member", member);
		
		request.getRequestDispatcher("MemberView.jsp").forward(request, response);
	}

}
