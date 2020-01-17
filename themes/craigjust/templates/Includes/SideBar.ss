<aside class="col-md col-md-4" role="complementary">
	<% if $Menu(2) %>
		<nav class="">
			<% with $Level(1) %>
				<ul class="nav nav-pills flex-column">
					<% include SidebarMenu %>
				</ul>
			<% end_with %>
		</nav>
	<% end_if %>
</aside>