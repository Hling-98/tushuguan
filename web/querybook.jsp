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
            for(i=0;i<len;i++){
                s_word=s_word.replace(" ","");
                s_word=s_word.replace("%","");
            }
        }
    </script>
</head>
<body>
<table height="210" border="0" width="889">
<tbody>
<tr><td><img border="0" src="Images/photo.jpg"></td></tr>
</tbody>
</table>
<form method="post" action="queryresult.jsp" name="querybook" onsubmit="javascript:return check(this);">
<table align="center" height="200" border="0" width="390">
<tbody>
<tr>
    <td align="right"> &nbsp; 检索词类型: </td>
    <td><select name="queryType'">
            <option value="bookname">书名</option>
            <option value="author">作者</option>
            <option value="pubhouse">出版社</option>
            <option value="isbn">图书编号</option>
        </select></td>
</tr>
<tr align="center">
    <td align="right"> &nbsp; 捡索词: </td>
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
    <td align="left"><input type="submit" value=检索" name="query"></td>
</tr>
</tbody></table></form>
</body>
</html>