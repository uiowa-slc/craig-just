<% include Header %>
<main role="main">

	<div class="row no-gutters">
		<div class="col-lg">
            <div class="main-carousel">
            	<% loop $ChildrenOf("main-features") %>
                <div class="carousel-cell" class="d-block w-100">
                    <img src="$Image.URL" alt="$Caption.ATT">
                </div>
                <% end_loop %>

            </div>
            <p class="carousel-caption">&nbsp;</p>
		</div>

	</div>

    <div class="container pt-5">
        <div class="row">
            <div class="col-md">
				<h2 class="home-news-header">News</h2>
				<% loop BlogPosts(3) %>
			
					<h3><a href="$Link">$MenuTitle</a></h3>
					
					$Content	
					<p class="small">Posted on $PublishDate.Format("MMMM d, YYYY")</p>
				<% end_loop %>
            </div>
            <div class="col-md">
            	<img src="assets/craig1.jpg" class="home-craig-pic" />
                    $Content
            </div>
        </div>
    </div>
</main>


