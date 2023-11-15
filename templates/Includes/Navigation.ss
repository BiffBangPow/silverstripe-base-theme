<nav class="navbar" id="main-navbar">
    <a class="navbar-logo" href="/">
        <img alt="logo" id="site-logo" src="$ThemeDir/client/dist/img/logo.svg"/>
    </a>
</nav>

<button class="hamburger hamburger--collapse" type="button" id="navtoggler" aria-label="Toggle navigation">
  <span class="hamburger-box">
    <span class="hamburger-inner"></span>
  </span>
</button>

<div class="" id="mainnav-holder">
    <ul class="navbar-nav ml-auto" id="mainnav-list">
        <% loop $MainMenu %>
            <li class="nav-item $URLSegment<% if $MenuChildren %> has-children<% end_if %>">
                <% if $MenuChildren %><span class="nav-expander"></span><% end_if %>
                <a class="nav-link <% if $isCurrent || $isSection %>active<% end_if %>" href="$Link">$Title</a>
                <% if $MenuChildren %>
                    <ul class="child-nav">
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

</div>
