<script type="text/javascript">
function checkit()
{
	var check1 = document.application.C1K.checked;
	var check2 = document.application.C2K.checked;
	var check3 = document.application.C3K.checked;
	var check4 = document.application.C4K.checked;
	var check5 = document.application.C5K.checked;
	
	if(check1 == true && check2 == true && check3 == true && check4 == true && check5 == true)
	{
		window.location = "<?php echo url('/registration'); ?>";
	}
	else
	{
		alert("You must fulfil all requirements to join.");
		return false;
	}
}
</script>

<h3>1. Requirements to Join</h3>

<form name="application">

<p>I am aged 14 or older
<span style="float: right; width: 60px;"><input value="good" type="checkbox" name="C1K" value="ON"></span></p>

<p class="light">I own a legal, working copy of Microsoft Flight Simulator 2004/FSX or X-Plane
<span style="float: right; width: 60px;"><input value="good" type="checkbox" name="C2K" value="ON"></span></p>

<p>I have an internet connection and valid email address
<span style="float: right; width: 60px;"><input value="good" type="checkbox" name="C3K" value="ON"></span></p>

<p class="light">I have read and agree to the rules, regulations and policies in the Pilot Handbook &amp; SOPs</a>
<span style="float: right; width: 60px;"><input value="good" type="checkbox" name="C4K" value="ON"></span></p>

<p>I understand I must file a PIREP within two weeks of joining or my account will be deleted
<span style="float: right; width: 60px;"><input value="good" type="checkbox" name="C5K" value="ON"></span></p>

</form>
<br>
<center><a href="#" onclick="checkit();" class="button">Proceed to Stage 2 of Pilot Registration</a></center>
<br>