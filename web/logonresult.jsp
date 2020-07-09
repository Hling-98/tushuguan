<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册->登录</title>
</head>
<body>
<%
        String username="";
        String truename="";
        String password="";
        String sex="";
        String age="";
        String IDcard="";
        String phone="";
        String email="";
        request.setCharacterEncoding("UTF-8");
        if(request.getParameter("username")!=null)
            username=request.getParameter("username");
        if(request.getParameter("truename")!=null)
            truename=request.getParameter("truename");
        if(request.getParameter("password")!=null)
            password=request.getParameter("password");
        if(request.getParameter("sex")!=null)
            sex=request.getParameter("sex");
        if(request.getParameter("age")!=null)
            age=request.getParameter("age");
        if(request.getParameter("IDcard")!=null)
            IDcard=request.getParameter("IDcard");
        if(request. getParameter("phone")!=null)
            phone=request.getParameter("phone");
        if(request.getParameter("email")!=null)
            email=request.getParameter("email");
%>
<jsp:forward page="login.jsp">
    <jsp:param name="login" value="注册成功，请登录! "/>
</jsp:forward>
</body>
</html>