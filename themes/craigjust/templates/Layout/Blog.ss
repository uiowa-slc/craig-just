<div id="page-content-wrapper">
	<div id="blog-content">

<% include BlogSideBar %>

<div id="BlogContent" class="blogcontent typography">
	
	<% include BreadCrumbs %>
	
	<% if SelectedTag %>
		<h3><% _t('VIEWINGTAGGED', 'Viewing entries tagged with') %> '$SelectedTag'</h3>
	<% else_if SelectedDate %>
		<h3><% _t('VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedDate.Month $SelectedDate.Year</h3>
	<% end_if %>
	
	<% if BlogPosts %>
		<% loop BlogPosts %>
				<% include BlogSummary %>
		<% end_loop %>
	<% else %>
		<h3><% _t('NOENTRIES', 'There are no blog entries') %></h3>
	<% end_if %>
	
	<% include BlogPagination %>
	
</div>

</div></div>