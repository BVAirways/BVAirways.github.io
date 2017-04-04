<?php
if(!$userinfo)
{
	echo '<h3>This pilot does not exist!</h3>';
	return;
}
?>
<h3>Profile For <?php echo $userinfo->firstname . ' ' . $userinfo->lastname?></h3>

<table width="80%" cellspacing="5" border="0" align="center">
<tr>

</tr>
  <tr>
    <td width="12%" rowspan="6" align="left"><?php
			if(!file_exists(SITE_ROOT.AVATAR_PATH.'/'.$pilotcode.'.png'))
			{
				echo '<img src="'.PilotData::getPilotAvatar($pilotid).'" width="100" height="100" />';
			}
			else
			{
				echo '<img src="'.SITE_URL.AVATAR_PATH.'/'.$pilotcode.'.png'.'" alt="No Avatar" /> ';
			}
			?></td>
  </tr>
  <tr>
    <td valign="top" width="20%" align="left"><strong>Pilot ID:</strong></td>
    <td valign="top" width="30%" align="left"><?php echo $pilotcode ?></td>
    <td valign="top" width="20%" align="left"><strong>Location:</strong></td>
    <td valign="top" width="30%" align="left"><?php echo Countries::getCountryName($userinfo->location);?></td>
  </tr>
  <tr>
    <td align="left"><strong>E-Mail:</strong></td>
    <td align="left"><?php echo $userinfo->email?></td>
    <td align="left"><strong>Flights:</strong></td>
    <td align="left"><?php echo $userinfo->totalflights?></td>
  </tr>
  <tr>
    <td align="left"><strong>Rank:</strong></td>
    <td align="left"><?php echo $userinfo->rank;?></td>
    <td align="left"><strong>Hours / Transfer Hours:</strong></td>
    <td align="left"><?php echo $userinfo->totalhours; ?> / <?php echo $userinfo->transferhours?></td>
  </tr>
  <tr>
    <td align="left"><strong>Hub:</strong></td>
    <td align="left"><?php echo $userinfo->hub;?></td>
    <td align="left"><strong>Earnings:</strong></td>
    <td align="left"><?php echo FinanceData::FormatMoney($userinfo->totalpay) ?></td>
  </tr>
</table>
<br>
<?php
/*
	Added in 2.0!
*/
$chart_width = '800';
$chart_height = '250';

/* Don't need to change anything below this here */
?>
<div align="center" style="width: 100%;">
	<div align="center" id="pireps_chart"></div>
</div>

<script type="text/javascript" src="<?php echo fileurl('/lib/js/ofc/js/swfobject.js')?>"></script>
<script type="text/javascript">
swfobject.embedSWF("<?php echo fileurl('/lib/js/ofc/open-flash-chart.swf');?>", 
	"pireps_chart", "<?php echo $chart_width;?>", "<?php echo $chart_height;?>", 
	"9.0.0", "expressInstall.swf", 
	{"data-file":"<?php echo actionurl('/pilots/statsdaysdata/'.$userinfo->pilotid);?>"});
</script>

<br>