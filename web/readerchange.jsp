<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>修改个人信息</title>
<script language="javascript">
    function check(){
        if(myform.username.value==""){
            alert("请输入用户名！");
            return false;
        }
        if(myform.truename.value=="" ){
            alert("请输入真实姓名！");
            return false;
        }
        if(myform.password.value.length<6){
            alert("密码长度至少为6位！");
            return false;
        }
        if(myform.password.value!=myform.password2.value){
            alert("两次输入的密码不一致！");
            return false;
        }
        var age=myform.age.value;
        for(i=0;i<age.length;i++) {
            if (age.charAt(i) < "0") {
                alert("请输入有效年龄！");
                return false;
            }
            else if (age.charAt(i) > "9") {
                alert("请输入有效年龄！");
                return false;
            }
        }
        var phone=myform.phone.value;
        for(i=0;i<phone.length;i++){
            if(age.charAt(i)<"0"){
                alert("请输入有效电话！");
                return false;
            }
            else if(age.charAt(i)>"9"){
                alert("请输入有效电话！");
                return false;
            }
            else{
                return true;
            }
        }
    }
</script>
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
<form name="myform" method="post" action="changeresult.jsp" onsubmit="return check()">
    <table height="100%" border="1" align="center" width="90%">
        <h2>修改用户信息</h2>
        <tr>
        <td align="right">用户名: <br></td>
        <td align="left"><input type="text" name="username"></td>
        </tr>
        <tr>
            <td align="right">真实姓名: <br></td>
            <td align="left"><input type="text" name="truename"></td>
        </tr>
        <tr>
            <td align="right">密码: </td>
            <td aligns="left"><input type="text" name="password"></td>
        </tr>
        <tr>
            <td align="right">确认密码: </td>
            <td algn="left"><input type="text" name="password2"></td>
        </tr>
        <tr>
            <td align="right">年龄: </td>
            <td align="left"><input type="text" name="age"></td>
        </tr>
        <tr>
            <td align="right">电话号码:</td>
            <td align="left"><input type="text" name= "phone"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="修改">&nbsp;&nbsp;
                <input type="reset" value="取消">
            </td>
        </tr>
</table>
</form>
</body>
</html>