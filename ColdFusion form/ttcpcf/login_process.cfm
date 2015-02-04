<cfquery name="qVerify" datasource="sed">
    SELECT  userid, username, password
	    FROM    users
    WHERE username = '#username#'
	    AND  password = '#password#'
	</cfquery>


	<cfif qVerify.RecordCount>	    <!--- This user has logged in correctly, change the value of the session.allowin value --->
    <cfset session.allowin = "True" />
	    <cfset session.userid = qVerify.userid />
<cfset username = #form.username#>
    <!--- Now welcome user and redirect to "<strong>members_only.cfm</strong>" --->
	  <script>
     alert("Welcome user, you have been successfully logged in!");

	    </script>

	<cfform action="sttcp2.cfm" method ="post">

		<input type="text" name="username" value=<cfoutput> #username#</cfoutput> hidden>


		<input type="submit" value="Start a new form">


</cfform>
     <cfform action="sttcp.cfm" method ="post">

		<input type="text" name="username" value=<cfoutput> #username#</cfoutput> hidden>


		<input type="submit" value="Edit saved form"><br><br>

<a href="login.cfm"> Logout </a>
</cfform>


	< cfelse>
	    <!--- this user did not log in correctly, alert and redirect to the login page --->
	    <script>
	        alert("Your credentials could not be verified, please try again!!!");
	        self.location="Javascript:history.go(-1)";
    </script>
	</cfif>
