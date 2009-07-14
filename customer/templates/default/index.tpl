<HTML>
<HEAD>
	<link rel="shortcut icon" href="templates/{$SKIN_NAME}/images/favicon.ico">
	<title>..:: {$CCMAINTITLE} ::..</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		{if ($CSS_NAME!="" && $CSS_NAME!="default")}
			   <link href="templates/default/css/{$CSS_NAME}.css" rel="stylesheet" type="text/css">
		{else}
			   <link href="templates/default/css/main.css" rel="stylesheet" type="text/css">
			   <link href="templates/default/css/menu.css" rel="stylesheet" type="text/css">
			   <link href="templates/default/css/style-def.css" rel="stylesheet" type="text/css">
		{/if}
</HEAD>

<BODY leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

{literal}
<script LANGUAGE="JavaScript">
<!--
	function test()
	{
		if(document.form.pr_login.value=="" || document.form.pr_password.value=="")
		{
			alert("You must enter an user and a password!");
			return false;
		}
		else
		{
			return true;
		}
	}
-->
</script>

{/literal}

	<form name="form" method="POST" action="userinfo.php" onsubmit="return test()">
	<input type="hidden" name="done" value="submit_log">

	  	
    <div id="login-wrapper" class="login-border-up">
	<div class="login-border-down">
	<div class="login-border-center">
	<table width="100%" cellspacing="12" >
	<tr>
		<td class="login-title" colspan="2">
			 {php} echo gettext("AUTHENTICATION");{/php}
		</td>
	</tr>
	<tr>
		<td style="padding-left: 20px"><img src="templates/{$SKIN_NAME}/images/kicons/lock_bg.png"></td>
		<td align="center" style="padding-right: 10px">
			<table width="90%">
			<tr align="center">
				<td align="left"><font size="2" face="Arial, Helvetica, Sans-Serif"><b>{php} echo gettext("User");{/php}:</b></font></td>
				<td><input class="form_input_text" type="text" name="pr_login" size="15"></td>
			</tr>
			<tr align="center">
				<td align="left"><font face="Arial, Helvetica, Sans-Serif" size="2"><b>{php} echo gettext("Password");{/php}:</b></font></td>
				<td><input class="form_input_text" type="password" name="pr_password" size="15"></td>
			</tr>
			<tr align="right" >
				<td colspan="2"><input type="submit" name="submit" value="{php} echo gettext("LOGIN");{/php}" class="form_input_button"></td>
			</tr>  
			
			</table>
		</td>
	</tr>
	<tr align="center">
		<td colspan="2"><font class="fontstyle_007">{php} echo gettext("Forgot your password ?");{/php} <a href="forgotpassword.php">{php} echo gettext("Click here");{/php}</a></font>.</td>
    </tr>
	<tr align="center">
        <td colspan="2"><font class="fontstyle_007">{php} echo gettext("To sign up");{/php} <a href="signup.php">{php} echo gettext("Click here");{/php}</a></font>.</td>
    </tr>    
  	</table>
  	</div>
  	</div>
  	
  	<div style="color:#BC2222;font-family:Arial,Helvetica,sans-serif;font-size:11px;font-weight:bold;padding-left:10px;" >
  	{if ($error == 1)}
			{php} echo gettext("AUTHENTICATION REFUSED, please check your user/password!");{/php}
    {elseif ($error==2)}
			{php} echo gettext("INACTIVE ACCOUNT, Please activate your account!");{/php}
    {elseif ($error==3)}
			{php} echo gettext("BLOCKED ACCOUNT, Please contact the administrator!");{/php}
    {/if}
    </div>
  	</div>
	</form>
{literal}

{/literal}
