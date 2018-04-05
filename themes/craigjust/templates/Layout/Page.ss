
<div id="page-content-wrapper">
	<div id="page-content">
		<h1>$Title</h1>
		$Content
		$Form
	</div>
	
	<div id="page-sidebar">
		<% loop Level(1) %>
		<h2><a href="$Link">$MenuTitle</a></h2>
		<% end_loop %>
		
		<ul>
			<% if Menu(2) %>
				<% loop Menu(2) %>
						<li><a href="$Link" class="$LinkOrCurrent">$MenuTitle</a>
							<% if LinkOrSection = section %>
								<ul>
									<% loop Children %>
										<li class="$LinkOrCurrent"><a class="$LinkOrCurrent" href="$Link">$MenuTitle</a></li>
									<% end_loop %>
								</ul>
							<% end_if %>
						</li>
				<% end_loop %>
			<% end_if %>
		</ul>
	</div>
	
	<div class="clear-left"></div>

</div>