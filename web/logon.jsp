<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<script language="javascript">
    function check(){
        if(myform.username.value==""){
            alert("请输入用户名！");
            return false;
        }
        if(myform.username.value==""){
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
        for(i=0;i<age.length;i++){
            if(age.charAt(i)<"0"){
                alert("请输入有效年龄！");
                return false;
            }
            else if(age.charAt(i)>"9"){
                alert("请输入有效年龄！");
                return false;
            }
            if(myform.idcard.value==""){
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
        }
    }
</script>
</html>