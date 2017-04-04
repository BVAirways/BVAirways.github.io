<?php
$count = 5;
$pireps = PIREPData::getRecentReportsByCount($count);
?>
<table width="100%" border="0" cellpadding="5" cellspacing="0">
    <tr class="table-header">
        <td style="border-right: 2px solid #FFFFFF">Flight Number</td>
        <td style="border-right: 2px solid #FFFFFF">Departure</td>
        <td style="border-right: 2px solid #FFFFFF">Arrival</td>
        <td style="border-right: 2px solid #FFFFFF">Duration</td>
        <td style="border-right: 2px solid #FFFFFF">Touchdown Rate</td>
        <td>Status</td>
    </tr>
 <?php
$color1 = "#F5F5F5";
$color2 = "#FFFFFF";
$row_count = 0;
if(count($pireps) > 0)
{
  foreach ($pireps as $pirep)
  {
  {
        $pilotinfo = PilotData::getPilotData($pirep->pilotid);
        $pilotid = PilotData::getPilotCode($pilotinfo->code, $pilotinfo->pilotid);
        
        if($pirep->accepted == '0') $status = 'REJECTED';
        if($pirep->accepted == '1') $status = 'ACCEPTED';
        else $status = 'PENDING';
        
       $row_color = ($row_count % 2) ? $color1 : $color2; 
} 
?>
        <tr class="table-data" bgcolor="<?php echo $row_color; ?>">
        <td><?php echo $pirep->code.$pirep->flightnum; ?></td>
        <td><?php echo $pirep->depicao; ?></td>
        <td><?php echo $pirep->arricao; ?></td>
        <td><?php echo $pirep->flighttime; ?></td>
        <td><?php echo $pirep->landingrate; ?> ft/min</td>
        <td><?php
                
                if($pirep->accepted == PIREP_ACCEPTED)
                        echo '<div class="label-success">Accepted</div>';
                elseif($pirep->accepted == PIREP_REJECTED)
                        echo '<div class="label-danger">Rejected</div>';
                elseif($pirep->accepted == PIREP_PENDING)
                        echo '<div class="label-warning">Pending</div>';
                elseif($pirep->accepted == PIREP_INPROGRESS)
                        echo 'Flight in Progress';
                
                ?>
        </td>
        </tr>
        <?php
        $row_count++; 
  }}
else
{
        echo '<tr><td colspan="7 style="text-align:center;">There are no recent flights!</td></tr>';
}
?>

</table>