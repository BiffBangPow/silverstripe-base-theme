<footer class="footer py-4 mb-5">
    <div class="container">
        <% if $SiteConfig.FooterLogo %>
            <div class="d-flex align-items-center justify-content-center">
                <a class="footer-logo" href="/" title="<%t Template.FooterLogoLinkTitle 'Link to the site home page'%>">
                    <% with $SiteConfig.FooterLogo.FitMax(300,100) %>
                        <img alt="<%t Template.FooterLogoAlt 'Company Logo'%>" id="footer-logo" src="$URL"
                             width="$Width"
                             height="$Height"/>
                    <% end_with %>
                </a>
            </div>
        <% end_if %>

        <div class="p-2 text-center">
            <% with $SiteConfig %>
                <% if $CompanyAddress %>
                    <p>$CompanyAddress</p>
                <% end_if %>
                <% if $CompanyEmail %>
                    <p><a href="mailto:$CompanyEmail">$CompanyEmail</a></p>
                <% end_if %>
                <% if $CompanyPhone %>
                    <p>$CompanyPhone</p>
                <% end_if %>
            <% end_with %>
        </div>

        <% if $HasSocial %>
            <div class="p-2 footer-social d-flex justify-content-center">
                <% include SocialIcons %>
            </div>
        <% end_if %>

        <div class="mx-2 my-4 d-flex justify-content-center footer-nav">
            <p class="mb-0">
                <% loop $FooterMenu() %>
                    <a class="px-2" href="$Link" title="$Title.XML">
                        $MenuTitle.XML
                    </a>
                <% end_loop %>
            </p>
        </div>

        <div class="mx-2 my-4">
            <p class="text-center">
                <span
                    class="copyright-text d-block d-md-inline-block pe-0 pe-md-2">&copy; $Now.Year $SiteConfig.Title</span>
                <span
                    class="credit-text d-block d-md-inline-block ps-0 ps-md-2"><%t Template.CraftedBy 'Website crafted by' %>
                    <a href="https://biffbangpow.com" class="font-weight-bold text-white" target="_blank"
                       rel="noopener">Biff Bang Pow</a></span>
            </p>
        </div>
    </div>
</footer>


