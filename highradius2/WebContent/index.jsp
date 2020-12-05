<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="style.css">
        
        
    </head>
  </head>
  <body>
          <div>
               <img src="hrc-logo.jpg">
          </div>
<div class="paragraph">
<B>ORDER MANAGEMENT APPLICATION</B>
</div>  
<div>  <form name="form" action="<%=request.getContextPath()%>/LoginServlet" method="post">
 
<div class="login-box">
  <h1>Sign in</h1>
  <div class="textbox">
    <i class="fas fa-user"></i>
    <input type="text" name="username" placeholder="Username" ></input>
  </div>

  <div class="textbox">
    <i class="fas fa-lock"></i>
    <input type="password" name="password" placeholder="Password" ></input>
  </div>
<span style="color:red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span>
  <input type="submit" class="btn" value="Sign in"></input><input type="reset" value="Reset"></input>
</div>
 </form>  
</div>
  </body>
</html>