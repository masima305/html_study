<%@page import="vo.SjVO"%>
<%@page import="java.util.List"%>
<%@page import="dao.SjDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%
	SjDAO dao = SjDAO.getInstance();
	List<SjVO> sj_list = dao.selectList();
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<style>
		table{ border:1px solid black;
			   border-collapse:collapse;
			   text-align:center; }
			   
		th{ width:80px; }
	</style>

	<script type="text/javascript">
		
		function del( no ){
			
			//alert( '학생번호 : ' + no );
			if( confirm("정말로 삭제하시겠습니까?") == false ){
				return;
				
			}else{
				
				location.href="sung_del.jsp?no=" + no;
				
			}
			
		}//del()
	
		//입력폼 보이게 하기
		function show_form(){
			
			var disp = document.getElementById( "disp" );
			
			//div를 눈에 보이게 만든다.
			disp.style.display = 'block';
			
		}//show_form()
		
	</script>

</head>

<body>
	<table border='1'>
		<caption>학생정보</caption>
		
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>국어</th>
			<th>영어</th>
			<th>수학</th>
			<th>총점</th>
			<th>평균</th>
			<th>순위</th>
		</tr>
		
		<% for( int i = 0; i < sj_list.size(); i++ ){ 
		 		SjVO vo = sj_list.get(i);%>
			<tr>
				
				<td><%= vo.getNo() %></td>
				<td><%= vo.getName() %></td>
				<td><%= vo.getKor() %></td>
				<td><%= vo.getEng() %></td>
				<td><%= vo.getMat() %></td>				
				<td><%= vo.getTotal() %></td>
				<td><%= vo.getAve() %></td>
				<td><%= vo.getRank() %></td>
				
				<td>
					<input type="button" value="삭제"
					       onclick="del( '<%= vo.getNo() %>' );">
				</td>
				
			</tr>
		<% } %>
		
		<tr>
			<td colspan="9">
				<input type="button" value="학생 추가"
				       id="bt_append" onclick="show_form();">
			</td>
		</tr>
	</table>
	
	<!-- 학생정보 입력을 위한 form -->
	<div id="disp" style="display:none">
		
		<form>
			<table width="30%" border='1'>
				
				<caption>학생의 성적을 입력해주세요</caption>
				
				<tr>
					<th>이름</th>
					<td><input name="name"></td>
				</tr>
				
				<tr>
					<th>국어</th>
					<td><input name="kor"></td>
				</tr>
				
				<tr>
					<th>영어</th>
					<td><input name="eng"></td>
				</tr>
				
				<tr>
					<th>수학</th>
					<td><input name="mat"></td>
				</tr>
				
				<tr>
					<td colspan="2" align="center">
						
						<input type="button" value="등록"
						 onclick="send( this.form );">				
						
						<input type="button" value="취소"
						 onclick="my_cancel();">
					</td>
				</tr>
			</table>
		</form>
		
	</div>
	
	
</body>

</html>
















