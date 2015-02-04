<!DOCTYPE html>

<html>

	<style>
       #MainWrapper {
margin: 0 auto 0 auto;
 position:relative;
    width: 1870px;

    background: #FFFFFF;


}</style>
<body>

<div id="MainWrapper">

	<h1>Login to access form</h1><br>
<cfform name="myForm"  action="login_process.cfm" method="post">
	User Id(AUID):<input type="text" name="username"><br>
	&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbspPassword: <input type="password" name="password" ><br>
	<br>

	<input type="submit" name="login" value="Login"><a href="https://id.nasa.gov/uss/PasswordReset.uss">Forgot Password?</a><br>


</cfform>
</div>
</body>

</html>

