<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
</head>
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
<body>
<table>
    <tbody>
    <tr><td><img border="0" src="/Images/photo.jpg" height="200" width="400" align ="center"></td></tr>
    </tbody>
</table>
<div align="center">
    <h2>用户注册</h2>
        <%!String sex=null;%>
    <form action="logonresult.jsp" method="post" onSubmit="return check()" name="myform">
    <table height="100%" border="1" align="center" width="90%">
        <tbody>
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
            <td colspan="2" align="center"><input type="submit" value="注册"> &nbsp; &nbsp;
                <input type="reset" value="取消"></td>
        </tr>
        </tbody></table></form></div>
</body>
</html>
