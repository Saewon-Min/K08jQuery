<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

request.setCharacterEncoding("UTF-8");
// 요청시 전송된 파라미터를 받아 출력할 HTML을 구성한다.
String gName = request.getParameter("goodsOptionName");
if(gName.equals("op01")){
%>
	<table class="table table-bordred">
		<tr>
			<td>옵션명 :</td>
			<td>옵션 선택1(AAA)추가</td>
		
		</tr>
		<tr>
			<td colspan="2" class="danger">추가비용 : +5,000원</td>
		
		</tr>
	
	
	</table>	

<% 
}else if(gName.equals("op02")){
%>
	<table class="table table-bordred">
		<tr>
			<td>옵션명 :</td>
			<td>옵션 선택2(BBB)추가</td>
		
		</tr>
		<tr>
			<td colspan="2" class="info">추가비용 : +7,000원</td>
		
		</tr>
	
	
	</table>	




<% 

}else if(gName.equals("op03")) {
%>
	<table class="table table-bordred">
		<tr>
			<td>옵션명 :</td>
			<td>옵션 선택3(CCC)추가</td>
		
		</tr>
		<tr>
			<td colspan="2" class="success">추가비용 : +10,000원</td>
		
		</tr>
	
	
	</table>	

<% 
}
%>


    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>