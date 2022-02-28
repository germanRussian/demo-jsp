<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//마방진 수
		int cube = 3;
		int sum = 0;
		int chkNum = 0;
		
		//전체합을 구하자
		for(int i = 1; i <= (cube*cube); i++) {
			sum += i;
			
		}
		
		chkNum = (sum/(cube*cube))*cube;
		
		
		
		int[][] arr = { 
				{ 2, 7, 6 }, 
				{ 9, 5, 1 },
				{ 4, 3, 8 }
				};

		int rowCntChk = 0;
		for (int i = 0; i < arr.length; i++) {

			for (int j = 0; j < arr[i].length; j++) {

				rowCntChk += arr[i][j];
			}
		}
		if(rowCntChk !=chkNum*cube) {
			out.println("오답");
			return;
		}
		int colCntChk = 0;
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr[i].length; j++) {
				colCntChk += arr[j][i];
			}
		}
		if(colCntChk!=chkNum*cube) {
			out.println("오답");
			return;
		}
		int leftTop = 0;
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr[i].length; j++) {
				if(i == j) {
					leftTop += arr[j][i];
				}
			}
		}
		if(leftTop != chkNum) {
			out.println("오답");
			return;
		}
		int rightTop = 0;
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr[i].length; j++) {
				if(i + j == (cube-1)) {
					rightTop += arr[j][i];
				}
			}
		}
		if(rightTop !=chkNum) {
			out.println("오답");
			return;
		}
		out.println("정답입니다. 축하축하~");
%>
</body>
</html>