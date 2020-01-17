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
		<% if $PaginatedList.Exists %>
			<% loop $PaginatedList %>
				<% include SilverStripe\\Blog\\PostSummary %>
			<% end_loop %>

			<% with $PaginatedList %>
				<% include SilverStripe\\Blog\\Pagination %>
			<% end_with %>
		<% end_if %>

		</div>
		<% include SilverStripe\\Blog\\BlogSideBar %>
	</div>
</div>
