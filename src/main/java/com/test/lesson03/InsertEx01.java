package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;


@WebServlet("/lesson03/insert_ex01")
public class InsertEx01 extends HttpServlet{

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// requestParams
		String name = request.getParameter("name");
		String yyyymmdd = request.getParameter("yyyymmdd");
		String email = request.getParameter("email");
		String introduce = request.getParameter("introduce");
		
		// DB 접속
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		String insertQuery = "insert into `new_user`"
				+ "(`name`,`yyyymmdd`,`email`,`introduce`)"
				+ "values"
				+ "('" + name + "','" + yyyymmdd + "','" + email + "','" + introduce + "');";
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		ms.disconnect();
		
		// redirect
		response.sendRedirect("/lesson03/ex01_user_list.jsp");
		
	}
}
