<table border = "0" width="100%" class="acarsmap">
<thead>
	<tr class="roster-header">
		<td><b>Pilot</b></td>
		<td><b>Flight Number</b></td>
		<td><b>Departure</b></td>
		<td><b>Arrival</b></td>
		<td><b>Status</b></td>
		<td><b>Altitude</b></td>
		<td><b>Speed</b></td>
		<td><b>Distance/Time Remain</b></td>
	</tr>
</thead>
<tbody id="pilotlist"></tbody>
</table>
<?php
/* This is the template which is used in the table above, for each row. 
	Be careful modifying it. You can simply add/remove columns, combine 
	columns too. Keep each "section" (<%=...%>) intact
	
	Variables you can use (what they are is pretty obvious)
	
	Variable:							Notes:
	<%=flight.pilotid%>
	<%=flight.firstname%>
	<%=flight.lastname%>
	<%=flight.pilotname%>				First and last combined
	<%=flight.flightnum%>
	<%=flight.depapt%>					Gives the airport name
	<%=flight.depicao%>
	<%=flight.arrapt%>					Gives the airport name
	<%=flight.arricao%>
	<%=flight.phasedetail%>
	<%=flight.heading%>
	<%=flight.alt%>
	<%=flight.gs%>
	<%=flight.disremaining%>
	<%=flight.timeremaning%>
	<%=flight.aircraft%>				Gives the registration
	<%=flight.aircraftname%>			Gives the full name
	<%=flight.client%>					FSACARS/Xacars/FSFK, etc
	<%=flight.trclass%>					"even" or "odd"
	
	You can also use logic in the templating, if you so choose:
	http://ejohn.org/blog/javascript-micro-templating/
*/
?>
<script type="text/html" id="acars_map_row">
<tr class="<%=flight.trclass%> roster-data">
<td><a href="<?php echo url('/profile/view');?>/<%=flight.pilotid%>"><%=flight.pilotid%> - <%=flight.pilotname%></a></td>
<td><%=flight.flightnum%></td>
<td><%=flight.depicao%></td>
<td><%=flight.arricao%></td>
<td><%=flight.phasedetail%></td>
<td><%=flight.alt%></td>
<td><%=flight.gs%></td>
<td><%=flight.distremaining%> <?php echo Config::Get('UNITS');?> / <%=flight.timeremaining%></td>
</tr>
</script>
