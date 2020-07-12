<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书检索</title>
    <script language="javascript">
        function check(theForm){
            var s_word=theForm.queryWord.value;
            var s_match=theForm.match.value;
            if(s_word==""){
                alert("请输入检索词! ");
                return false;
            }
            if(s_word=="%")
            {
                alert("不支持%检索!请输入检索词! ");
                return false;
            }
        }
    </script>
</head>
<body>
<table>
    <tbody>
    <tr>
        <td><img border="0" src="/Images/photo.jpg" height="200" width="400" align ="center" valign="top"></td>
    </tr>
    </tbody>
</table>
<p><h1 align="center" size="6">图书检索</h1></p>
<form method="post" action="queryresult.jsp" name="querybook" onsubmit="javascript:return check(this);">
<table align="center" height="200" border="0" width="500">
<tbody>
<tr>
    <td align="right"> &nbsp; 检索词类型: </td>
    <td><select name="queryType'">
            <option value="bookname">书名</option>
            <option value="author">作者</option>
            <option value="pubhouse">出版社</option>
            <option value="category">类目</option>
        </select></td>
</tr>
<tr align="center">
    <td align="right"> &nbsp; 检索词: </td>
    <td align="left"><input type="text" name="queryWord"></td>
</tr>
    <tr>
        <td align="right"> &nbsp; 匹配方式: </td>
        <td><select name="match">
            <option value="fuzzyMatch">模糊匹配</option>
            <option value="exactMatch">精确匹配</option>
        </select></td>
    </tr>
<tr>
    <td></td>
    <td align="center"><input type="submit" value="检索" name="query"></td>
</tr>
</tbody></table></form>
<tr>
    <td align="center">&nbsp;<a href="index.jsp">返回</a></td>
</tr>
</body>
</html>