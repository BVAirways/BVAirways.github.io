<div class="logo-top-left"><img src="<?php echo SITE_URL?>/lib/skins/bav2/images/news_logo.png" /></div>
<div class="login-top-right"><?php 
		/* 
		Quick example of how to see if they're logged in or not
		Only show this login form if they're logged in */
		if(Auth::LoggedIn() == false)
		{ ?>
			<form name="loginform" action="<?php echo url('/login'); ?>" method="post">
				Sign-in with your pilot id or email, or <a href="<?php echo url('/entrance'); ?>">register</a><br />
			<input type="text" name="email" value="" onClick="this.value='BAW'" class="input" />
			<input type="password" name="password" value="" class="input" />
			<input type="hidden" name="remember" value="on" />
			<input type="hidden" name="redir" value="index.php/profile" />
			<input type="hidden" name="action" value="login" />
			<input type="submit" name="submit" value="Log In" class="btn-danger" />
			</form>
			<?php
		}	
		/* End the Auth::LoggedIn() if */
		else /* else - they're logged in, so show some info about the pilot, and a few links */
		{
		
		/*	Auth::$userinfo has the information about the user currently logged in
			We will use this next line - this gets their full pilot id, formatted properly */
		$pilotid = PilotData::GetPilotCode(Auth::$userinfo->code, Auth::$userinfo->pilotid);
		?>
		
		<img align="left" height="50px" width="50px" style="margin-right: 10px;"
			src="<?php echo PilotData::getPilotAvatar($pilotid);?>" />

		<strong>Pilot ID: </strong> <?php echo $pilotid ; ?>
		<strong>Rank: </strong><?php echo Auth::$userinfo->rank;?><br />
		<strong>Total Flights: </strong><?php echo Auth::$userinfo->totalflights?>, <strong>Total Hours: </strong><?php echo Auth::$userinfo->totalhours;?>
		<br />
		<a href="<?php echo url('/schedules/bids');?>">View My Bids</a> | 
		<a href="<?php echo url('/profile/');?>">View Pilot Center</a> |
		    <?php
	if(Auth::LoggedIn())
	{
    if(PilotGroups::group_has_perm(Auth::$usergroups, ACCESS_ADMIN))
    {
        echo '<a href="'.fileurl('/admin').'">Admin Center</a>';
    }
	}
	?>
		<?php
		} /* End the else */
		?></div>