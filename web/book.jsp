<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书信息</title>
</head>
<body><div align="center">
<a href="querybook.jsp">图书检索</a><br>
<a href="addbook.jsp">添加图书</a><br>
<a href="logout.jsp">退出登录</a><br>
<h1 size="6">图书信息</h1><br></div>
<table border="1" align="center" width="100%" height="40%">
<tbody> <tr>
    <td align="right">书名</td>
    <td align="right">作者</td>
    <td align="right">出版社</td>
    <td align="right">图书编号</td>
    <td align="right">价格</td>
    <td align="left">类目</td>
    <td align="left">库存</td>
    <td align="left">所在位置</td>
    <td align="left">详情</td>
    <td align="center">出版日期</td>
    <td align="center">总数</td>
    <td align="center">剩余</td>
    <td align="center">修改</td>
    </tr>
<%
    request.setCharacterEncoding("UTF-8");
    int size=10;
    int totalPage=0;
    int p=1;
    ResultSet rs=null;
    String sql1= "select*from book";
    String sql2= "select count(*) count from book";
    int totalrecord=0;
    if(totalrecord % size ==0) totalPage = totalrecord / size;
    else totalPage = totalrecord / size + 1;
    if(totalPage==0) totalPage=1;
    %>
</tbody>
</table>
    <br>
    <table width="80%" height="40%" align="center">
    <form action="book.jsp" method="get">
    <tr><td align="center">
<%
    for(int i=1;i<=totalPage;i++) {
        out.println("<a href=book.jsp?p=" + i + ">" + i + "</a>&nbsp;&nbsp;");
    }
%>
</td></tr>
<td>输入页数: <input type= "text" name="p" size ="3"><input type="submit" value="确定">
    页数: <td> <%=p%>/<%=totalPage%></td>
</td>
    </form>
    </table>
</body>
</html>