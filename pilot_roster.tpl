<h3>Pilot Roster</h3>
<br>
<table width="100%" border="0" cellpadding="4" cellspacing="0">
    <tr class="table-header">
        <td style="border-right: 2px solid #FFFFFF">Pilot ID</td>
        <td style="border-right: 2px solid #FFFFFF">Name</td>
        <td style="border-right: 2px solid #FFFFFF">Country</td>
        <td style="border-right: 2px solid #FFFFFF">Flight</td>
        <td style="border-right: 2px solid #FFFFFF">Hours</td>
        <td style="border-right: 2px solid #FFFFFF">Rank</td>
        <td style="border-right: 2px solid #FFFFFF">VATSIM/IVAO ID</td>
        <td>Status</td>
    </tr>

<?php
$color1 = "#F5F5F5";
$color2 = "#FFFFFF";
$row_count = 0;

foreach($pilots as $pilot)
	{
	$row_color = ($row_count % 2) ? $color1 : $color2;
	?>
	<tr class="table-data" bgcolor="<?php echo $row_color; ?>">
		<td><a href="<?php echo url('/profile/view/'.$pilot->pilotid);?>"><?php echo PilotData::GetPilotCode($pilot->code, $pilot->pilotid)?></a></td>
		<td><?php echo $pilot->firstname.' '.$pilot->lastname?></td>
		<td><img src="<?php echo Countries::getCountryImage($pilot->location);?>" 
			alt="<?php echo Countries::getCountryName($pilot->location);?>" /></td>
		<td><?php echo $pilot->totalflights?></td>
		<td><?php echo Util::AddTime($pilot->totalhours, $pilot->transferhours); ?></td>
		<td><img src="<?php echo $pilot->rankimage?>" alt="<?php echo $pilot->rank;?>" /></td>
		<td><?php echo PilotData::GetFieldValue($pilot->pilotid, 'VATSIM/IVAO ID (Mandatory)'); ?></td>
		<td><?php 
		if($pilot->retired == 0)
        echo '<font color="green"><strong>Active</strong></font>';
        elseif($pilot->retired == 1)
        echo '<font color="red"><strong>Inactive</strong></font>';

 		?></td>
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
			<form name="next20" id="next20" action="<?php echo SITE_URL?>/index.php/pilots/next" method="post">
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
			<form name="next20" id="next20" action="<?php echo SITE_URL?>/index.php/pilots/next" method="post">
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