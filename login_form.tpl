<h3>Login</h3><br>
<form name="loginform" action="<?php echo url('/login');?>" method="post">
<?php echo "<?xml version='1.0'?>"; ?>
<?php
if(isset($message))
	echo '<center><p class="error">'.$message.'</p></center>';
?>

<table width="300px" border="0" align="center" cellpadding="5" cellspacing="0" style="border:1px solid #CCCCCC;">
	<tr class="roster-data">
		<td bgcolor="#ebebeb" align="left" style="border-right:1px solid #CCCCCC;border-bottom:1px solid #CCCCCC;"><strong>Pilot ID:</strong></td>
		<td bgcolor="#fcfcfc" align="left" style="border-bottom:1px solid #CCCCCC;"><input type="text" name="email" value="" class="input"/></td>
	</tr>
	<tr class="roster-data">
		<td bgcolor="#ebebeb" align="left" style="border-bottom:1px solid #CCCCCC;border-right:1px solid #CCCCCC;"><strong>Password:</strong></td>
		<td bgcolor="#fcfcfc" align="left" style="border-bottom:1px solid #CCCCCC;"><input type="password" name="password" value="" class="input"/></td>
	</tr>
	<tr class="roster-data">
		<td colspan="2" bgcolor="#fcfcfc">Remember Me? <input type="checkbox" name="remember" />
		<br>
		<center><input type="hidden" name="action" value="login" />
		<input type="submit" name="submit" value="Log In" class="button" />
		</td>
	</tr>
	
</table>
		<br>
		<center><a href="<?php echo url('Login/forgotpassword'); ?>">I forgot my password</a>
		</center>

</form>