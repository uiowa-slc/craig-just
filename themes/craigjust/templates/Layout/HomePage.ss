					<div id="feature-image-wrapper">
					
						        <div id="slider-wrapper">
					        
					            <div id="slider" class="nivoSlider">
					               
					              <% loop ChildrenOf(main-features) %> 
					              <a href="$LinkURL"><img src="$Image.URL" alt="Image of $Title" title="$Caption" /></a>
					              <% end_loop %>
					              
					            </div>
					   
					        
					        </div>
					</div>
					
					<div id="homepage-content-wrapper">
						<div id="homepage-news-wrapper" class="typography">
						<h2 class="news">News</h3>
						
						<% loop BlogPosts(3) %>
						<div class="news-post">
							<h3><a href="$Link">$MenuTitle</a></h3>
							<p class="authorDate">on $PublishDate.NiceUS</p>
							$Content	
						</div>
						<% end_loop %>
						
					</div>
						<div id="homepage-content">
							<!--<div id="featured-profile">
								<h3>John Smith</h3>
								<p>Dummy text <a href="#">read more</a></p>
							
							</div>-->
							
							<!--<div id="project-list">
								<ul>
									<% loop ChildrenOf(featured-projects) %>
										<li><a href="$Link">$Title</a></li>
									<% end_loop %> 
								</ul>
							</div>-->
							<div class="clear"></div>
							
							<div id="homepage-aboutbox">
								<img src="http://craigjust.org/assets/craig1.jpg" class="person">
								$Content		
							</div>
							
							<div style="clear: left"></div>
							
						</div>
						<div style="clear: left"></div>
					</div>