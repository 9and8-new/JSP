<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
	System.out.print("출력할 구구단 숫자를 입력하세요.");
	Scanner sc = new Scanner(System.in);
	int dan = sc.nextInt();
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 출력</title>
<style>
	table{border : 1px solid; margin : 10px; }
	td { border : 1px solid; padding : 8px; text-align : center;}
	tbody{border : 1px solid; padding : 5px;} 
</style>
</head>
<body>
	<h2>구구단 출력</h2>
					

			<!--
					단수 입력받아 해당 구구단을 찍어보세요(Table로 만드세요 - 스크립틀릿)
			-->
			
			
			<table>
					
				<summary><%=dan %> 단</summary>
				
			<tbody>
				<%
				for(int i=1;i<10;i++)
				{
				%>
				<tr>
					<td><%=dan %></td>
					<td>x</td>
					<td><%=i %></td>
					<td>=</td>
					<td><%=dan*i %></td>
				</tr>
				<%
				}
				%>
			</tbody>
						
			</table>

				
				
		


				







</body>
</html>