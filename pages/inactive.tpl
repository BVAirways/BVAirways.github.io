<h3><?php echo $title?></h3>

<?php
	if(!$allpilots)
	{
		echo 'There are no pilots!';
		return;
	}
?>
<table id="tabledlist" class="tablesorter">
<thead>
<tr>
	<th>Pilot ID</th>
	<th>Days since last flight</th>
	
</tr>
</thead>
<tbody>
<?php
foreach($allpilots as $pilot)
{
	/* 
		To include a custom field, use the following example:

		<td>
			<?php echo PilotData::GetFieldValue($pilot->pilotid, 'VATSIM ID'); ?>
		</td>

		For instance, if you added a field called "IVAO Callsign":

			echo PilotData::GetFieldValue($pilot->pilotid, 'IVAO Callsign');		
	 */
	 
	 // To skip a retired pilot, uncomment the next line:
	 if($pilot->retired == 1) { continue; }
?>
<tr>
	<td width="1%" nowrap><a href="<?php echo url('/profile/view/'.$pilot->pilotid);?>">
			<?php echo PilotData::GetPilotCode($pilot->code, $pilot->pilotid)?></a>
	</td>
	<td><?php echo Config::Get('PILOT_INACTIVE_TIME')?></td><?php
}
?>
</tbody>
</table>