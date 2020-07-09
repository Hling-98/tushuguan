<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
    <script language="javascript">
    function check(theForm) {
        if (theForm.userName.value == "") {
            alert("用户名不能为空");
            return false;
        }
        else if (theForm.passWord.value == "") {
            alert("密码不能为空");
            return false;
        }
        else {
            return true;
        }
    }
    </script>
    </head>
    <body><div align="center">
        <p><font size="6">用户登录</font></p>
        <form method="post" action="verify.jsp" name="login" onsubmit="javascript:return check(this);"scope="session">
        <div align="right"></div>
            <table height="150" border="O" align="center" width="300">
        <tbody>
        <tr>
            <td align="right">用户名: </td>
            <td>&nbsp; <input type="text" name ="userName'"></td>
        </tr>
        <tr>
            <td align="right">密码: &nbsp; <br></td>
            <td> &nbsp; <input type="password" name="passWord"></td>
        </tr>
        <tr>
            <td valign="top" align="right">
            <input type="submit"  value="登录"  name="login"></td>
            <td valign="top"  align="center">&nbsp;
            <input type= "reset" value="清空" name="empy"></td>
        </tr>
        </tbody>
        </table>
        </form>
    <%
        String warning=request.getParameter("warning");
        if(warning!=null)
            out.println("<h3>"+warning+",请重新登录! </h3>");
        String warning3=request.getParameter("warning3");
        if(warning3!=null)
            out.println("<h3>"+warning3+"</h3>");
        String login=request.getParameter("login");
        if(login!=null)
            out.println("<h3>"+login+"</h3>");
    %>
        </div>
    </body>
</html>