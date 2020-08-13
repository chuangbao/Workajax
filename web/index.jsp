<%--
  Created by IntelliJ IDEA.
  User: 3157931179
  Date: 2020/7/14
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>登陆</title>
  </head>
  <body>
      <form >
        <p class="content">注册邮箱：<input id="email" type="text"><span></span></p>
        <p>用户名：<input id="name" type="text"></p>
        <p>密码：<input id="pwd" type="password"></p>
        <input type="submit" value="提交">
      </form>

      <script type="text/javascript" src="js/jquery-1.12.4.js"></script>
      <script type="text/javascript">
          $(function () {
              $("#email").blur(function () {
                  var email = $("#email").val();
                  var span = $("#email").next();

                  if (email.trim() == ""){
                      span.html("<lable style='color: red'>邮箱不能为空!</lable>")
                  } else{
                     $.get({
                        url:"user",
                        data:"email="+email,
                        success:function (result) {
                          if (result == "exist"){
                            span.html("<lable style='color: red'>此邮箱已被注册!</lable>")
                          } else{
                            span.html("<lable style='color: green'>可以使用!</lable>")
                          }
                        },
                        dataType:"text",
                        error:function () {
                          alert("程序异常!")
                        }
                      })
                  }
              })
          })
      </script>

  </body>
</html>
