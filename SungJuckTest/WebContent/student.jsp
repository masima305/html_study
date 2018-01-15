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
			
			disp.style.position = "relative";
			disp.style.left = (window.innerWidth / 2 - 150) + "px";
			disp.style.top = "10px";
			
			//div를 눈에 보이게 만든다.
			disp.style.display = 'block';	
		}//show_form()
		
		//전송메서드
		function send(f){
			
			var name = f.name.value.trim();
			var kor = f.kor.value.trim();
			var eng = f.eng.value.trim();
			var mat = f.mat.value.trim();
			
			if( name == '' ){
				alert("이름을 입력하세요");
				f.name.focus();
				return;
			}
			
			//정수를 판단하는 정규식
			var number = /^[0-9]+$/;
			
			if( !number.test( kor ) || kor < 0 || kor > 100 ){
				alert( "성적은 0 ~ 100사이의 정수로 입력하세요" );
				f.kor.value = "";
				f.kor.focus();
				return;
			}
			
			if( !number.test( eng ) || eng < 0 || eng > 100 ){
				alert( "성적은 0 ~ 100사이의 정수로 입력하세요" );
				f.eng.value = "";
				f.eng.focus();
				return;
			}
			
			if( !number.test( mat ) || mat < 0 || mat > 100 ){
				alert( "성적은 0 ~ 100사이의 정수로 입력하세요" );
				f.mat.value = "";
				f.mat.focus();
				return;
			}
			
			f.action = "sung_register.jsp";
			f.submit();
			
		}//send()
		
		//취소버튼
		function my_cancel( f ){
				
			f.name.value = "";
			f.kor.value = "";
			f.eng.value = "";
			f.mat.value = "";
			
			var disp = document.getElementById("disp");
			disp.style.display = "none";			
		}
		
		function my_cancel2( f ){
			
			f.name2.value = "";
			f.kor2.value = "";
			f.eng2.value = "";
			f.mat2.value = "";
			
			var disp2 = document.getElementById("disp2");
			disp2.style.display = "none";			
		}
		
		//내용 수정을 위한 메서드
		function update( no, name, kor, eng, mat ){
			
			var disp2 = document.getElementById("disp2");
			disp2.style.display = 'block';
			
			document.getElementsByName( "no" )[0].value = no;
			document.getElementsByName( "name2" )[0].value = name;
			document.getElementsByName( "kor2" )[0].value = kor;
			document.getElementsByName( "eng2" )[0].value = eng;
			document.getElementsByName( "mat2" )[0].value = mat;
			
		}//update()
		
		function send2( f ){
			
			var name2 = f.name2.value.trim();
			var kor2 = f.kor2.value.trim();
			var eng2 = f.eng2.value.trim();
			var mat2 = f.mat2.value.trim();
			
			//유효성 체크
			
			f.action = "sung_update.jsp";
			f.submit();
			
		}//send()
		
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
				
				<td>
					<input type="button" value="수정"
						   onclick="update( '<%= vo.getNo() %>', 
						   				    '<%= vo.getName() %>', 
						   				    '<%= vo.getKor() %>', 
						   				    '<%= vo.getEng() %>', 
						   				    '<%= vo.getMat() %>' );">
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
						 onclick="my_cancel( this.form );">
					</td>
				</tr>
			</table>
		</form>
		
	</div>
	
	<!-- 학생정보 수정용 form -->
	<div id="disp2" style="display:none">
		
		<form>
			
			<input type="hidden" name="no">
			
			<table width="30%" border='1'>
			
				<caption>항목을 수정하세요</caption>
				
				<tr>
					<th>이름</th>
					<td><input name="name2"></td>
				</tr>
			
				<tr>
					<th>국어</th>
					<td><input name="kor2"></td>
				</tr>
				
				<tr>
					<th>영어</th>
					<td><input name="eng2"></td>
				</tr>
				
				<tr>
					<th>수학</th>
					<td><input name="mat2"></td>
				</tr>
				
				<tr>
					<td colspan="2" align="center">
						<input type="button" value="수정"
						 onclick="send2( this.form );">				
						
						<input type="button" value="취소"
						 onclick="my_cancel2( this.form );">
					</td>
				</tr>
				
			</table>
			
		</form>
		
	</div>
	
</body>

</html>
















