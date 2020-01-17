<% include Header %>


<div class="container vh-75 pt-5 pb-5">
	<div class="row d-flex justify-content-center">
		<div class="col-sm col-md-8 content-container" role="main">
			<article>


					<% if $PaginatedList.Exists %>
						<h2>Posts by $CurrentProfile.FirstName $CurrentProfile.Surname:</h2>
						<% loop $PaginatedList %>
							<% include SilverStripe\\Blog\\PostSummary %>
						<% end_loop %>
					<% end_if %>

					$Form
					$CommentsForm

					<% with $PaginatedList %>
						<% include SilverStripe\\Blog\\Pagination %>
					<% end_with %>
				</article>

		</div>
		<% include SilverStripe\\Blog\\BlogSideBar %>
	</div>
</div>


<div class="blog-entry content-container col-sm">
	
</div>

<% include SilverStripe\\Blog\\BlogSideBar %>