<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.ArrayList"%>
<%@page import="controller.ZipcodeDAO"%>
<%@ page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
request.setCharacterEncoding("UTF-8");
// 시,도를 파라미터로 받음
String sido = request.getParameter("sido");
ZipcodeDAO dao = new ZipcodeDAO();
// DAO로 시,도를 인수로 전달함
ArrayList<String> gugunList = dao.getGugun(sido);
 
// JSON배열을 만들기 위한 객체 생성
JSONArray jsonArr = new JSONArray();

for(String gu : gugunList){
	// JSONArray는 List컬렉션과 사용법이 동일함
	jsonArr.add(gu);
}
dao.close();
out.println(jsonArr.toString());
%>