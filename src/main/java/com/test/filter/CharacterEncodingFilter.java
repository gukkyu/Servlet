package com.test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/*")
public class CharacterEncodingFilter implements Filter {

	// test 용 주석 추가
	// 임시 내용 추가
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		// 요청과 응답에 대한 인코딩 설정
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		chain.doFilter(request, response);
		
	}

}
