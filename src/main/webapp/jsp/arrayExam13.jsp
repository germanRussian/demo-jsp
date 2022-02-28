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
int max = 0;
//최소값      Int max = -999999999 또는 Interger.MIN_VALUE    | MAX_VALUE 최대값
int[] arr = { 0, 5, 3, 8, 2 };
for (int i = 0; i < arr.length; i++) {
	if(arr[i] > max) {
		max = arr[i];
		//arr[i] ->arr[] 첫번째 칸의 값 
		//i가 오면 모든 수가 자동으로 돈다.
	}
} 
out.println(max);
%>
</body>
</html>