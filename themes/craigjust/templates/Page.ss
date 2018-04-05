<!DOCTYPE html>
<html lang="$ContentLocale">
	<head>
		<% base_tag %>
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> - $SiteConfig.Title - The University of Iowa</title>
		$MetaTags(false)
		<link rel="shortcut icon" href="/favicon.ico" />
		<link href='http://fonts.googleapis.com/css?family=Cabin' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="{$ThemeDir}/css/reset.css">
		<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
		<script type="text/javascript" src="$BaseHref/mysite/javascript/jquery/jquery-1.5.2.min.js"></script>
		<script type="text/javascript" src="$BaseHref/mysite/javascript/slider/jquery.nivo.slider.js"></script>
		<link rel="stylesheet" type="text/css" href="$BaseHref/mysite/javascript/slider/nivo-slider.css"/>
		<script type="text/javascript">
			$(window).load(function() {
			    $('#slider').nivoSlider({
			    pauseTime: 6000,
			    controlNav:false
			    }); 
			});
		</script>
		<% require themedCSS(layout) %> 
		<% require themedCSS(typography) %> 
	</head>
	<body>
		<div id="background-wrapper">
			<!-- Header -->
			<div id="header">
			
				<div id="uiowa-bar">
					<div id="uiowa-logo">
					<a href="http://www.uiowa.edu/"><img src="$ThemeDir/images/uiowa-logo.png" /></a></div>
				</div>
				
				<div id="navigation-container">
					<div id="navigation">
						<div id="logo">
						<a href="$BaseHref"><!--<img src="$ThemeDir/images/logo.png" class="logo" />-->
						<span>$SiteConfig.Title</span>
						$SiteConfig.Tagline
						</a>
						
						</div>
						<ul>
							<% loop Menu(1) %>
								<li><a href="$Link" class="{$FirstLast} {$LinkOrSection}">$MenuTitle</a></li>
							<% end_loop %>
						</ul>
						<div style="clear: both"></div>
					</div>
				</div>
				
				
				<div class="clear-left"></div>
				</div> <!-- end Header -->
				<div id="body-wrapper">
				<!-- Content Area -->
				<div id="content-wrapper"  class="typography">
				
				$Layout
				
				</div>
				</div>
			
			<div id="footer">
				<div id="footer-content" class="typography">
					
					<ul class="footer-content__menu">
						<% loop Menu(1) %>
							<li <% if FirstLast %>class="$FirstLast"<% end_if %>><a href="$Link">$MenuTitle</a>
							<% if Children %>
							<ul>
								<% loop Children %>
									<li><a href="$Link">$MenuTitle</a></li>
								<% end_loop %>
							</ul>
							<% end_if %>
							
							
							</li>
						<% end_loop %>
					</ul>
					
					<div class="footing">
						<ul class="iowa-logo">
							<li><a href="http://www.uiowa.edu"><img src="http://craigjust.org/assets/uilogow.png"></a></li>
							
							<li><p class="copyright">&copy; $Now.Year <a href="http://www.uiowa.edu/">The University of Iowa</a></p></li>
						</ul>

						<ul class="contact-info">
							<li>Craig Just, Assistant Professor</li>
							<li><a href="mailto:craig-just@uiowa.edu">craig-just@uiowa.edu</a></li>
							<li>(319) 335-5051</li>
							<li>(319) 335-5660</li>
							<li>IIHR - Hydroscience and Engineering <a href="http://www.iihr.uiowa.edu/">Website</a></li>
							<li>Department of Civil and Environmental Engineering<a href="http://www.cee.engineering.uiowa.edu/"> Website</a></li>
							<li><a href="http://www.linkedin.com/pub/craig-just/26/202/634"><img src="http://craigjust.org/assets/social-l_2.png" border="0" class="linkedin"></a></li>
						</ul>


						
						
					
					
					</div>
				</div>
			</div>
		</div>
		$Analytics
	</body>
</html>