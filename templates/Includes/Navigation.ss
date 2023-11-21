<div id="main-navbar" class="">
    <% if $SiteConfig.NavLogo %>
        <a class="navbar-logo" href="/" title="<%t Template.NavLogoLinkTitle 'Link to the site home page'%>">
            <% with $SiteConfig.NavLogo.FitMax(200,40) %>
                <img alt="<%t Template.NavLogoAlt 'Company Logo'%>" id="site-logo" src="$URL" width="$Width"
                     height="$Height"/>
            <% end_with %>
        </a>
    <% end_if %>

    <div id="nav-bun">
        <button class="hamburger hamburger--spin" type="button" id="navtoggler" aria-label="Toggle navigation"
                aria-controls="mainnav-holder">
  <span class="hamburger-box">
    <span class="hamburger-inner"></span>
  </span>
        </button>
    </div>

    <nav id="mainnav-holder" class="px-3 pt-9 pb-4" aria-expanded="false">
        <ul class="p-0" id="mainnav-list">
            <% loop $MainMenu %>
                <li class="nav-item $URLSegment<% if $MenuChildren %> has-children<% end_if %> py-2">
                    <% if $MenuChildren %>
                        <button class="nav-expander d-inline-block btn btn-lg" aria-controls="subnav-$ID"
                                aria-label="Expand child menu">&#9658;
                        </button><% end_if %>
                    <a class="nav-link <% if $isCurrent || $isSection %>active<% end_if %>" href="$Link">$Title</a>
                    <% if $MenuChildren %>
                        <ul class="child-nav p-0" id="subnav-$ID" aria-expanded="false">
                            <% loop $MenuChildren %>
                                <li class="child-nav-item $URLSegment">
                                    <a class="nav-link <% if $isCurrent || $isSection %>active<% end_if %>"
                                       href="$Link">$Title</a>
                                </li>
                            <% end_loop %>
                        </ul>
                    <% end_if %>
                </li>
            <% end_loop %>
        </ul>
    </nav>
</div>
