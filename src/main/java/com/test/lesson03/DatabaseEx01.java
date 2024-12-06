package com.test.lesson03;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/ex01")
public class DatabaseEx01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect(); // !! 실질적 DB 연결
		
		String insertQuery = "insert into `used_goods`"
				+ "(`sellor_id`,`title`,`description`,`price`)"
				+ "values"
				+ "(1, '고양이 간식 팝니다','저희 고양이가 안처먹어용 ㅠㅠ', 2000)";

		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		PrintWriter out = response.getWriter();
		String selectQuery = "select * from `used_goods`";
		try {
			ResultSet res = ms.select(selectQuery);
			
			while(res.next()) { // 결과 행이 있는 동안 수행 (iterator 와 다르게 next())
				out.println(res.getInt("id"));
				out.println(res.getString("title"));
				out.println(res.getString("description"));
				out.println(res.getInt("price"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		ms.disconnect();
	}
}
