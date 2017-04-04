<h3>Pilot Inactivity List</h3>
<br>
<table width="100%" border="0" cellpadding="4" cellspacing="0">
    <tr class="table-header">
        <td style="border-right: 2px solid #FFFFFF">Pilot ID</td>
        <td style="border-right: 2px solid #FFFFFF">Days since last flight</td>
    </tr>

<?php
$color1 = "#F5F5F5";
$color2 = "#FFFFFF";
$row_count = 0;

foreach($pilots as $pilot)
	{
	if($pilot->retired == 1) { continue; }
	$row_color = ($row_count % 2) ? $color1 : $color2;
	?>
	<tr class="table-data" bgcolor="<?php echo $row_color; ?>">
		<td><a href="<?php echo url('/profile/view/'.$pilot->pilotid);?>"><?php echo PilotData::GetPilotCode($pilot->code, $pilot->pilotid)?></a></td>
		<td><?php echo Config::Get('PILOT_INACTIVE_TIME')?></td>
	</tr>
	<?php
	$row_count++;  }
?>
</table>

<p></p>

<table>
<?php
if ($index != $count)
	{?>
		<td align="left">
			<form name="next20" id="next20" action="<?php echo SITE_URL?>/index.php/inactive/next" method="post">
				<input type="hidden" name="start" value="<?php echo ($index-$index);?>">
				<input type="submit" name="submit" value="Previous <?php echo $count;?>" />
			</form>
		</td>
	<?php
	}
else 
	{
		echo '<td></td>';
	}

if (count($pilots) == $count)
	{ ?>
		<td align="right">
			<form name="next20" id="next20" action="<?php echo SITE_URL?>/index.php/inactive/next" method="post">
				<input type="hidden" name="start" value="<?php echo $index;?>">
				<input type="submit" name="submit" value="Next <?php echo $count;?>" />
			</form>
		</td>
	<?php
	}
else
	{
		echo '<td></td>'; 
	}?>
</table>