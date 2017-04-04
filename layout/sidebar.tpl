<div class="box-header">
   <i class=' icon-info-sign'></i> Airline Statistics
</div>
<div class="box-content">
    <strong>Total Pilots:</strong> <?php echo number_format(StatsData::PilotCount()); ?><br>
    <strong>Total PIREPs:</strong> <?php echo number_format(StatsData::TotalFlights()); ?><br>
    <strong>Hours Flown:</strong> <?php echo number_format(StatsData::TotalHours()); ?><br>
    <strong>Miles Flown:</strong> <?php echo number_format(StatsData::TotalMilesFlown()); ?>nm<br>
    <strong>Pax Carried:</strong> <?php echo number_format(StatsData::TotalPaxCarried ()); ?> <br>
    <strong>Total Fuel Used:</strong> <?php echo number_format(StatsData::TotalFuelBurned()) ; ?>kgs
</div>
<br>
<div class="box-header">
 <i class='icon-warning-sign'></i>    Latest News
</div>
<div class="box-content">
   <?php PopUpNews::PopUpNewsList(5); ?>
</div>
<br>
<div class="box-header">
  <i class=' icon-group'></i>  Latest Pilots
</div>
<div class="box-content">
<?php MainController::Run('Pilots', 'RecentFrontPage', 5); ?><br>
<strong>Pending Applications:</strong> <?php echo count(PilotData::GetPendingPilots())?><br>
</div>
<br>
<div class="box-header">
  <i class='icon-user'></i>  Teamspeak 3
</div>
<div class="box-content">
<div id="ts3viewer_1003897" style="width:; background-color:;overflow:hidden;height:100%;"> </div>

<script type="text/javascript" src="http://static.tsviewer.com/short_expire/js/ts3viewer_loader.js"></script>

<script type="text/javascript">
<!--
var ts3v_url_1 = "http://www.tsviewer.com/ts3viewer.php?ID=1003897&text=000000&text_size=8&text_family=1&js=1&text_s_weight=bold&text_s_style=normal&text_s_variant=normal&text_s_decoration=none&text_s_color_h=525284&text_s_weight_h=bold&text_s_style_h=normal&text_s_variant_h=normal&text_s_decoration_h=underline&text_i_weight=normal&text_i_style=normal&text_i_variant=normal&text_i_decoration=none&text_i_color_h=525284&text_i_weight_h=normal&text_i_style_h=normal&text_i_variant_h=normal&text_i_decoration_h=underline&text_c_weight=normal&text_c_style=normal&text_c_variant=normal&text_c_decoration=none&text_c_color_h=525284&text_c_weight_h=normal&text_c_style_h=normal&text_c_variant_h=normal&text_c_decoration_h=underline&text_u_weight=bold&text_u_style=normal&text_u_variant=normal&text_u_decoration=none&text_u_color_h=525284&text_u_weight_h=bold&text_u_style_h=normal&text_u_variant_h=normal&text_u_decoration_h=none";
ts3v_display.init(ts3v_url_1, 1003897, 100);
-->
</script>
</div>
<br>
<div align="center"><form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="ZDW86Y8PRCDDG">
<input type="image" src="https://www.paypalobjects.com/en_US/GB/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal – The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form></div>