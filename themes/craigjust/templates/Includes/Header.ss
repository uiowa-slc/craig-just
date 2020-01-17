<header role="banner">
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <a class="navbar-brand " href="{$BaseUrl}" aria-label="{$SiteConfig.Title}">
            <span class="text-uppercase" style="font-size 28px;">{$SiteConfig.Title}</span>
            <br />
            <span class="small d-none d-md-inline" style="font-size: 13px;">$SiteConfig.Tagline</span>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
          <ul class="navbar-nav ml-auto">
                <% loop $Menu(1) %>
                    <li class="nav-item mr-lg-5 $LinkingMode nav-item<% if $isCurrent || $isSection %> active<% end_if %>"><a class="nav-link" href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
                <% end_loop %>
          </ul>
        </div>
    </nav>
</header>