<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加图书</title>
</head>
<body>
<h1 align="center">欢迎进入图书管理系统</h1>
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("adminname") == null){
        response.sendRedirect("/JavaWeb1/index.jsp");
    }
%>
<form action="BookAction?action=addtemp" onsubmit="return errorsubmit()" method="post">
    <div class="bookinfo">
        <div class="title">
            <span>请输入书本信息</span>
        </div>

        <div>
            <span class="title">书名：</span><input class="required" name="bookname"><span id="booknamecheck" class="error"></span>
        </div>
        <div>
            <span class="title">作者：</span><input class="required" name="author"><span id="authorcheck" class="error"></span>
        </div>
        <div>
            <span class="title">出版社：</span><input class="required" name="pubhouse"><span id="pubhousecheck" class="error"></span>
        </div>
        <div>
            <span class="title">图书编号：</span><input class="required" name="isbn" onkeyup="bookcheck()"><span id="bookidcheck" class="error"></span>
        </div>
        <div>
            <span class="title">价格：</span><input class="required" name="bookprice"><span id="bookpricecheck" class="error"></span>
        </div>
        <div>
            <span class="title">类目：</span><input class="required" name="bookcategory"><span id="bookcategorycheck" class="error"></span>
        </div>
        <div>
            <span class="title">库存：</span><input class="required" name="bookstore" ><span id="bookstorecheck" class="error"></span>
        </div>
        <div>
            <span class="title">所在位置：</span><input class="required" name="booklocation" ><span id="booklocationcheck" class="error"></span>
        </div>
        <div>
            <span class="title">详情：</span><input name="bookdesc"></input><span id="bookdesccheck" class="error"></span>
        </div>
        <div>
            <span class="title">出版日期：</span><input name="time"></input><span id="timecheck" class="error"></span>
        </div>
        <div class="button">
            <button type="submit" class="btn btn-default" name="over" value="1">完成添加</button>
            <button type="submit" class="btn btn-default" name="over" value="0" id="send">继续添加</button>
        </div>
    </div>
</form>
</body>
</html>

