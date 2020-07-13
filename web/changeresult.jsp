<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改结果</title>
</head>
<body>
<%
    String username="";
    String truename="";
    String password="";
    String age="";
    String phone="";
    request.setCharacterEncoding("UTF-8");
    if(request.getParameter("username")!=null)
        username=request.getParameter("username");
    if(request.getParameter("truename")!=null)
        truename=request.getParameter("truename");
    if(request.getParameter("password")!=null)
        password=request.getParameter("password");
    if(request.getParameter("age")!=null)
        age=request.getParameter("age");
    if(request. getParameter("phone")!=null)
        phone=request.getParameter("phone");
%>
<jsp:forward page="login.jsp">
    <jsp:param name="login" value="修改成功，请登录! "/>
</jsp:forward>
</body>
</html>