
<div id="page-content-wrapper">
	<div id="page-content" class="groupperson-page">
		<h1>$Title</h1>
		$Image
		<div class="person-info">
				<h3>Area of Study</h3><p>$AreaOfStudy</p>
				<h3>Hometown</h3><p>$Hometown</p>
			<% if ContactInfo %>
				<h3>Contact Info</h3>
					<% if PhoneNumber %>
						<p>$PhoneNumber</p>
					<% end_if %>
					<% if Email %>
						<a href="mailto:jeremy-bril@uiowa.edu">$Email</a>
					<% end_if %>
			<% end_if %>
				
		</div>
		
		<div class="clear">
		</div>
		
		<div class="bio">
		<h3>Bio</h3>
		$Content
		<a href="$MoreInfoLink">Click Here for More Info</a>
		</div>
		$Form
	</div>
	
	<div id="page-sidebar">
		<% control Level(1) %>
		<h2><a href="$Link">$MenuTitle</a></h2>
		<% end_control %>
		
		<ul>
			<% if Menu(2) %>
				<% control Menu(2) %>
						<li><a href="$Link" class="$LinkOrCurrent">$MenuTitle</a>
							<% if LinkOrSection = section %>
								<ul>
									<% control Children %>
										<li class="$LinkOrCurrent"><a class="$LinkOrCurrent" href="$Link">$MenuTitle</a></li>
									<% end_control %>
								</ul>
							<% end_if %>
						</li>
				<% end_control %>
			<% end_if %>
		</ul>
	</div>
	
	<div class="clear-left"></div>

</div>