package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet ("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String search = request.getParameter("search");
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		out.print("<html><head><title>quiz08.output</title></head><body>");
		
		for(int i = 0; i < list.size(); i++) {
//			if(list.get(i).contains(search)) {
//				String newList = list.get(i).replace(search, "<b>" + search + "</b>");
//				out.print(newList + "<br>");
//			}
			char [] newList = list.get(i).toCharArray();
			
			if(list.get(i).contains(search)) {
				for(int j = 0; j < newList.length; j++) {
					if(newList[j] == '맛') {
						out.print("<b>");
					} 
					
					out.print(newList[j]);
					
					if(newList[j] == '집') {
						out.print("</b>");
					}
				} out.print("<br>");
			}
		}
		
		out.print("</body></html>");
	}
}
