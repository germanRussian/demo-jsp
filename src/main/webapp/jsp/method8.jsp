<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
// 함수는 ↑여기 칸 안에 삽입 
public static int add(int i, int j) {
return i + j;
}

public static int minus(int i, int j) {
return i - j;
}

public static int multiply(int i, int j) {
return i * j;

}

public static int divide(int i, int j) {
		//int를 double로
return i / j;
//return double i / j; -> 실수나옴.
}

public static int remainder(int i, int j) {
return i % j;
}
%>
<%
int i = 12;
int j = 2;
int res = 0;
// double res2 = 0.;   => 실수

res = add(i, j); // 더하기
out.println(i + "+" + j + "=" + res);
out.println("<br/>"); //줄바꿈 //태그
res = minus(i, j); // 빼기 
out.println(i + "-" + j + "=" + res);
res = multiply(i, j); // 곱하기
out.println(i + "*" + j + "=" + res);
res = divide(i, j); // 나누기
//res2를 넣으면 실수값으로 나옴
out.println(i + "/" + j + "=" + res);
res = remainder(i, j); // 나머지
out.println(i + "%" + j + "=" + res);
%>
</body>
</html>