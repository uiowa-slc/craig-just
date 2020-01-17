<%--Include SidebarMenu recursively --%>
<% if LinkOrSection = section %>
	<% if $Children %>
		<li class="$LinkingMode nav-item">
			<h2 class="sec-nav-header"><a class="nav-link" href="$Link">Under $MenuTitle:</a></h2>
		</li>
		<% loop $Children %>
			<li class="$LinkingMode nav-item">
				<a href="$Link" class="$LinkingMode nav-link<% if $isCurrent || $isSection %> active<% end_if %>" title="Go to the $Title.XML page">
					<span class="text">$MenuTitle.XML</span>
				</a>

				<% if $Children && LinkOrSection = section %>
					<div class="secondary">
						<ul class="nav flex-column">
							<% include SidebarMenu %>
						</ul>
					</div>
				<% end_if %>

			</li>
		<% end_loop %>
	<% end_if %>
<% end_if %>
