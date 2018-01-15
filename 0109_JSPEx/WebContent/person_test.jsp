<%@page import="vo.PersonVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	ArrayList<PersonVO> pList = new ArrayList();
	PersonVO p1 = new PersonVO("이길동", 20, "010-111-1111");
	PersonVO p2 = new PersonVO("송길동", 21, "010-122-2211");
	PersonVO p3 = new PersonVO("왕길동", 22, "010-114-1411");
	PersonVO p4 = new PersonVO("정길동", 23, "010-511-1515");
	
	pList.add(p1);
	pList.add(p2);
	pList.add(p3);
	pList.add(p4);


%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	<style>
		th{width:100px;}
		.tel{width : 200px;}
	</style>

	</head>


	<body>
	
	
	<table border = "1">
		<tr>
			<th>
				이름
			</th>
			<th>
				나이
			</th>
			<th>
				전화번호
			</th>
		</tr>
		
		<%for(int i = 0; i < pList.size() ; i++){ %>
			
			<tr>
			<td>
				<%= pList.get(i).getName() %>
			</td>
			<td>
				<%= pList.get(i).getAge() %>
			</td>
			<td class="tel">
				<%= pList.get(i).getTel() %>
			</td>
		</tr>
			
		<% } %>
	</table>
	
	
	</body>
</html>