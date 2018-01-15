<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%! //선언영역 : 변수 또는 메서드를 정의하는 영역(전역변수)
	int n = 0;

	Random rnd = new Random();
	
	public int plus(int a, int b){
		return a+b;
	}
%>

<% 
	//지역변수 개념
	int random = rnd.nextInt(10-1+1)+1;
	System.out.println(random);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		
		<p><%= "n++ :"+n++%></p>
		<p><%= plus(random, random)%></p>
		
	</body>
</html>