package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/InsertQuiz02")
public class InsertQuiz02 extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.valueOf(request.getParameter("id"));
		String title = request.getParameter("title");
		int price = Integer.valueOf(request.getParameter("price"));
		String description = request.getParameter("description");
		String url = request.getParameter("url");
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		String insertQuery = "";
		if (url == "") {
			insertQuery = "insert into `used_goods`"
					+ "(`sellor_id`,`title`,`description`,`price`)"
					+ "values"
					+ "(" + id + ",'"+ title + "','"+ description + "'," + price + ");";
		} else {
			insertQuery = "insert into `used_goods`"
				+ "(`sellor_id`,`title`,`description`,`price`,`goodsImageUrl`)"
				+ "values"
				+ "(" + id + ",'"+ title + "','"+ description + "'," + price +",'" + url + "');";
		}
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		ms.disconnect();
		
		response.sendRedirect("/lesson03/quiz02.jsp");
		
	}
}
