package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet {
	@Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException  {
		// 한글 깨짐 방지 -> plain
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");

		// Request Parameter
		String id = (String) request.getParameter("user_id");
		String name = (String) request.getParameter("name");
		Integer age = Integer.parseInt(request.getParameter("age"));
		
		PrintWriter out = response.getWriter();
		
		// 예제1)
//		out.println("user_id: " + id);
//		out.println("name: " + name);
//		out.println("age: " + age);
		
		// 예제2)
		// JSON(JavaScript Object Notation)으로 response 구성하기
		// {"user_id":"marobiana", "name":"신보람", "age":25}

		
		out.print("{\"user_id\":\"" + id + "\", \"name\":\"" + name + "\", \"age\":" + age + "}");
	
	}
}