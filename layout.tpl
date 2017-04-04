<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en" dir="ltr">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7">
<title><?php echo $page_title; ?></title>

    <link rel="stylesheet" media="all" type="text/css" href="<?php echo SITE_URL?>/lib/skins/bav2/css/master.css" /> <!-- Main Site Css -->
    <link rel="stylesheet" media="all" type="text/css" href="<?php echo SITE_URL?>/lib/skins/bav2/css/icons.css" />
<?php 
/* This is required, so phpVMS can output the necessary libraries it needs */
echo $page_htmlhead; 
?>

<?php /*Any custom Javascript should be placed below this line, after the above call */ ?>

<script type="text/javascript">

function slideSwitch() {
    var $active = $('#slideshow IMG.active');

    if ( $active.length == 0 ) $active = $('#slideshow IMG:last');

    var $next =  $active.next().length ? $active.next()
        : $('#slideshow IMG:first');

    $active.addClass('last-active');
        
    $next.css({opacity: 0.0})
        .addClass('active')
        .animate({opacity: 1.0}, 1000, function() {
            $active.removeClass('active last-active');
        });
}

$(function() {
    setInterval( "slideSwitch()", 5000 );
});
</script>
</head>
<body>
<?php
/* This should be the first thing you place after a <body> tag
	This is also required by phpVMS */
echo $page_htmlreq;
?>

	<div id="top">
		<div id="main-wrapper"><?php include 'layout/header.tpl'; ?></div>
	</div>
	<div id="navigation">
		<div id="main-wrapper"><?php include 'layout/navigation.tpl'; ?></div>
	</div>
	<div id="main-wrapper">
		<div id="content">
			<div class="alert alert-danger"><font style="font-size:14px"><center>*** Please note that all pilots must read the <a href="http://www.britishairwaysvirtual.co.uk/core/modules/Downloads/SOP.pdf">SOP</a> (Standard Operating Procedure) as this provides information on how to use our system.  ***</center></font></div>
			<?php include 'layout/content.tpl'; ?>
		</div>
		</div>
	</div>
	<div id="footer"><?php include 'layout/footer.tpl'; ?></div>
</body>
</html>