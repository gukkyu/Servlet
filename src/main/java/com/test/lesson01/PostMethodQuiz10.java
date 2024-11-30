package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet ("/lesson01/quiz10")
public class PostMethodQuiz10 extends HttpServlet{
	
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "marobiana");
	        put("password", "qwerty1234");
	        put("name", "신보람");
	    }
	};
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String userId = request.getParameter("userId");
		String userPassword = request.getParameter("password");
		
		out.print("<html><head><title>로그인 결과</title></head><body>");
		
		if(userId.equals(userMap.get("id")) == false) {
			out.print("아이디가 일치하지 않습니다</body></html>");
		} else if (userPassword.equals(userMap.get("password")) == false) {
			out.print("비밀번호가 일치하지 않습니다</body></html>");
		}
		else {
			out.print(userMap.get("name") + "님 환영합니다!</body></html>");
		}
	}
}
