package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet ("/lesson03/quiz01_delete")
public class DeleteQuiz01 extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		int id = Integer.valueOf(request.getParameter("id"));
		String deleteQuery = "delete from `website` where id = " + id;
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		ms.disconnect();
		response.sendRedirect("/lesson03/quiz01.jsp");
	}
}
