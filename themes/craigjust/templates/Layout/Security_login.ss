<% include Header %>


<div class="container vh-75 pt-5 pb-5">
	<div class="row d-flex justify-content-center">
		<div class="col-sm col-md-8 content-container" role="main">
			<article>
				<h1>$Title</h1>
				<div class="content">$Content</div>
			</article>
			$Form
			$PageComments

		</div>
		<% if $Menu(2) || $SideBarView.Widgets %>
			<% include SideBar %>
		<% end_if %>
	</div>
</div>

