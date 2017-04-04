<!-- Mega Menu / Start
================================================== -->
<div class="menu style-1" align="center">
	<ul class="menu">

			<li><a href="<?php echo url('/'); ?>"><i class="icon-home"></i> Home</a></li>
<?php

/* Logged Out */

if(Auth::LoggedIn() == false){

?>                                 
	  <li><a style="cursor:pointer"><i class=' icon-group'></i> Corporate</a>
            <!-- Second Level / Start -->
            <ul>
                <li><a href='<?php echo url('/about'); ?>'>About Us?</a></li>
                <li><a href='<?php echo url('/staff'); ?>'>Staff Team</a></li>
                <li><a href='<?php echo url('/partners'); ?>'>Our Partners</a></li>
                <li><a href='<?php echo url('/entrance'); ?>'>Become a Pilot</a></li>
				<li><a href='<?php echo url('/rules'); ?>'>Rules & Regulations</a></li>
                <li><a href='<?php echo url('/ranks'); ?>'>Pilot Ranks</a></li>
            </ul>
            <!-- Second Level / End -->
    </li>

  
   
    <li><a href="<?php echo url('/FlightAcademy') ?>" style="cursor:pointer"><i class=' icon-briefcase'></i> Flight Academy</a></li>
        <li><a style="cursor:pointer"><i class='icon-cog'></i> Operations</a>
            <!-- Second Level / Start -->
            <ul>
                <li><a href='<?php echo url('/acars');?>'>Live Map</a></li>
                <li><a href='<?php echo url('/fleet');?>'>Our Fleet</a></li>
                <li><a href='<?php echo url('/schedules/view');?>'>Flight Schedules</a></li>
                <li><a href='<?php echo url('/pilots'); ?>'>Pilot Roster</a></li>
            </ul>
            <!-- Second Level / End -->
    </li>
    
    <li><a href="<?php echo url('/login');?>"><i class="icon-lock"></i> Log-in</a>
			    <!-- Second Level / Start -->
			            <ul>
			                <li><a href='<?php echo url('/entrance');?>'>Register</a></li>
			            </ul>
			            <!-- Second Level / End -->
	 </li>
    <?php } ?>
    
    
    <?php

/* Logged Out */

if(Auth::LoggedIn()){

?>
<li><a style="cursor:pointer"><i class=' icon-group'></i> Corporate</a>
            <!-- Second Level / Start -->
            <ul>
                <li><a href='<?php echo url('/about'); ?>'>About Us?</a></li>
                <li><a href='<?php echo url('/staff'); ?>'>Staff Team</a></li>
                <li><a href='<?php echo url('/partners'); ?>'>Our Partners</a></li>
                <li><a href='<?php echo url('/rules'); ?>'>Rules & Regulations</a></li>
                <li><a href='<?php echo url('/ranks'); ?>'>Pilot Ranks</a></li>
                <li><a href="http://www.britishairwaysvirtual.co.uk/core/modules/Downloads/SOP.pdf" target="_blank">BAVirtual SOP</a></li>
            </ul>
            <!-- Second Level / End -->
    </li>

  
    <li><a href="<?php echo url('/FlightAcademy') ?>" style="cursor:pointer"><i class=' icon-briefcase'></i> Flight Academy</a>
            <!-- Second Level / Start -->
            <ul>
                <li><a href='<?php echo url('/pages/flightacademy');?>'>How to use</a></li>
            </ul>
            <!-- Second Level / End -->
    </li>


    <li><a style="cursor:pointer"><i class='icon-cog'></i> Operations</a>
            <!-- Second Level / Start -->
            <ul>
                <li><a href='<?php echo url('/acars');?>'>Live Map</a></li>
                <li><a href='<?php echo url('/fleet');?>'>Our Fleet</a></li>
                <li><a href='<?php echo url('/schedules/view');?>'>Flight Schedules</a></li>
                <li><a href='<?php echo url('/pilots'); ?>'>Pilot Roster</a></li>
                <li><a href='<?php echo url('/loa'); ?>'>Leave of Absence</a></li>
                <li><a href='<?php echo url('/pages/fsxcrash'); ?>'>My Flight has just crashed!</a></li>
            </ul>
            <!-- Second Level / End -->
    </li>
    
   
<li><a href="<?php echo url('/profile'); ?>"><i class="icon-lock"></i> Crew Center</a>
<ul>
<li><a href="<?php echo url('/downloads'); ?>">Downloads</a></li>
<li><a href="http://www.britishairwaysvirtual.co.uk/forum">Community Forum</a></li>
<li><a href="http://www.britishairwaysvirtual.co.uk/core/modules/Downloads/SOP.pdf" target="_blank">BAVirtual SOP</a></li>
<li><a href="<?php echo url('/news'); ?>">Recent News</a></li>
<li><a href="">Twitter</a></li>
<li><a href="https://www.facebook.com/britishairwaysvirtual">Facebook</a></li>
<li><a href="https://www.facebook.com/groups/BAVirtual/">Facebook (Members Only)</a></li>
<li><a href="http://www.youtube.com/channel/UCsnRvzRO7_QqTzw_H0sHDLQ">YouTube</a></li>
<li><a href="http://fsxdb.com/">Airports Database</a></li>
<li><a href="<?php echo url('/Login/logout'); ?>">Log Out</a></li>
</ul>
</li>
<li><a style="cursor:pointer"><i class="icon-star"></i> Statistics</a>
            <!-- Second Level / Start -->
            <ul>
                <li><a href='<?php echo url('/TopPilot');?>'>Top Pilots</a></li>
                <li><a href='<?php echo url('/TouchdownStats'); ?>'>Landing Rates</a></li>
                <li><a href='<?php echo url('/finances'); ?>'>Finances</a></li>
            </ul>
            <!-- Second Level / End -->
    </li>

<?php } ?> 
<li><a href="<?php echo url('/contact'); ?>"><i class="icon-envelope-alt"></i> Contact Us</a></li>
		
	</ul>
</div>

<!-- Mega Menu / End
================================================== -->

</div>
<!-- Container / End -->