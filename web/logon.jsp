<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
            if(myform.IDcard.value==""){
                alert("请输入身份证号！");
                return false;
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
            }
            var em,index;
            em=myform.email.value;
            index=myform.email.value.indexOf('@');
            if(index<=0||index>em.length-1){
                alert("请输入电子邮件地址！");
                return false;
            }
        }
</script>
<head>
    <title>用户注册</title>
</head>
<body>
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
            <td align="left"><input type="text" name="true name"></td>
        </tr>
        <tr>
            <td align="right">密码: </td>
            <td aligns="left"><input type="password" name="password"></td>
        </tr>
        <tr>
            <td align="right">确认密码: </td>
            <td algn="left"><input type="password" name="confirm password"></td>
        </tr>
        <tr>
            <td align="right">年龄: </td>
            <td align="left"><input type="text" name="age"></td>
        </tr>
        <tr>
            <td align="right">性别: </td>
            <td align="left">
                <input type="radio" name="sex" value="男"
                    <%if(sex.equals("男")) out.println("checked");%>>
                <img src="Images/boy.gif" width="24" height="24">男
                <input type="radio" name="sex" value="女"
                    <%if(sex.equals("女")) out.println("checked");%>>
                <img src="Images/girl.gif" width="24" height="24">女</td>
        </tr>
        <tr>
            <td align="right">身份证号: </td>
            <td align="left"><input type="text" name="IDcard"></td>
        </tr>
        <tr>
            <td align="right">电话号码:</td>
            <td align="left"><input type="text" name= "phone"></td>
        </tr>
        <tr>
            <td align="right">电子邮箱: <br></td>
            <td align-="left"><input type="text" name="email"></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="注册"> &nbsp; &nbsp; &nbsp; &nbsp; <input type="reset" value="取消"></td>
        </tr>
        </tbody></table></form></div>
</body>
</html>
