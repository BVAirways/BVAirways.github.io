<?php

foreach($pilots as $pilot)
{
?>
<img src="<?php echo Countries::getCountryImage($pilot->location);?>" 
			alt="<?php echo Countries::getCountryName($pilot->location);?>" /> <a href="<?php echo url('/profile/view/'.$pilot->pilotid);?>"><?php echo PilotData::GetPilotCode($pilot->code, $pilot->pilotid)?></a> - <?php echo $pilot->firstname . ' ' . $pilot->lastname ?><br>
<?php
}
?>