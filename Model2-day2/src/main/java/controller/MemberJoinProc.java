package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberBean;
import model.MemberDao;

@WebServlet("/proc.do")
public class MemberJoinProc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//한글처리
		request.setCharacterEncoding("euc-kr");
		
		MemberBean bean = new MemberBean();
		bean.setId(request.getParameter("id"));
		String pass1 = request.getParameter("pass1");
		String pass2 = request.getParameter("pass2");
		bean.setPass1(pass1);
		bean.setPass2(pass2);
		bean.setEmail(request.getParameter("email"));
		bean.setTel(request.getParameter("tel"));
		
		String[] arr = request.getParameterValues("hobby");
		String data = "";
		for(String string : arr) {
			data += string + " ";
		}
		bean.setHobby(data);		
		bean.setJob(request.getParameter("job"));
		bean.setAge(request.getParameter("age"));
		bean.setInfo(request.getParameter("info"));
		
		
		if(pass1.equals(pass2)) {
			//DB 객체 생성
			MemberDao mdao = new MemberDao();
			mdao.insertMember(bean);
			
			request.getRequestDispatcher("MemberListCon.do").forward(request, response);
		} else {
			
			request.setAttribute("msg", "패스워드가 일치 하지 않습니다.");
			request.getRequestDispatcher("LoginError.jsp").forward(request, response);
		}
		
		// DB 객체 선언 후 저장.
		
		
	}

}
